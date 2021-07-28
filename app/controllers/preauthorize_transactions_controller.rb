class PreauthorizeTransactionsController < ApplicationController

  before_action do |controller|
   controller.ensure_logged_in t("layouts.notifications.you_must_log_in_to_do_a_transaction")
  end

  before_action :ensure_listing_is_open
  before_action :ensure_listing_author_is_not_current_user
  before_action :ensure_authorized_to_reply
  before_action :ensure_can_receive_payment

  def initiate
    params_validator = params_per_hour? ? TransactionService::Validation::NewPerHourTransactionParams : TransactionService::Validation::NewTransactionParams
    validation_result = params_validator.validate(params.to_unsafe_hash).and_then { |params_entity|
      tx_params = add_defaults(
        params: params_entity,
        shipping_enabled: listing.require_shipping_address,
        pickup_enabled: listing.pickup_enabled)
      tx_params[:marketplace_id] = @current_community.id

      TransactionService::Validation::Validator.validate_initiate_params(
        marketplace_uuid: @current_community.uuid_object,
        listing: listing,
        tx_params: tx_params,
        quantity_selector: listing.quantity_selector&.to_sym,
        shipping_enabled: listing.require_shipping_address,
        pickup_enabled: listing.pickup_enabled,
        availability_enabled: listing.availability.to_sym == :booking,
        stripe_in_use: StripeHelper.user_and_community_ready_for_payments?(listing.author_id, @current_community.id))
    }

    if validation_result.success
      initiation_success(validation_result.data)
    else
      initiation_error(validation_result.data)
    end
  end

  def initiated
    # // this will return customer object store, the customer id for later charges.
    Stripe.api_key = APP_CONFIG.feature_stripe_private_key
    email = @current_user.emails[0].address
    unless @current_user.stripe_customer_id.present?
      cs=Stripe::Customer.create(email: email, source: params[:stripe_token])
      @current_user.update_attributes stripe_token: params[:stripe_token], stripe_customer_id: cs.id
    end
    # cs=Stripe::Customer.retrieve("cus_JviS7Oxm4fFej3") ## get saved customer to run daily crone
    # Stripe::Charge.create({amount: 4000, currency: "usd", customer: cs.id, description: "from console", capture: true})
    params_validator = params_per_hour? ? TransactionService::Validation::NewPerHourTransactionParams : TransactionService::Validation::NewTransactionParams
    validation_result = params_validator.validate(params.to_unsafe_hash).and_then { |params_entity|
      tx_params = add_defaults(
        params: params_entity,
        shipping_enabled: listing.require_shipping_address,
        pickup_enabled: listing.pickup_enabled)

      TransactionService::Validation::Validator.validate_initiated_params(
        tx_params: tx_params,
        marketplace_uuid: @current_community.uuid_object,
        listing: listing,
        quantity_selector: listing.quantity_selector&.to_sym,
        shipping_enabled: listing.require_shipping_address,
        availability_enabled: listing.availability.to_sym == :booking,
        pickup_enabled: listing.pickup_enabled,
        transaction_agreement_in_use: @current_community.transaction_agreement_in_use?,
        stripe_in_use: StripeHelper.user_and_community_ready_for_payments?(listing.author_id, @current_community.id))
    }

    if validation_result.success
      initiated_success(validation_result.data)
    else
      initiated_error(validation_result.data)
    end
  end

  def stripe_confirm_intent
    tx = Transaction.where(community: @current_community).find(params[:id])
    unless tx.participations.include?(@current_user)
      return
    end

    stripe_payment = tx.stripe_payments.find(params[:stripe_payment_id])

    begin
      intent = StripeService::API::StripeApiWrapper.confirm_payment_intent(
        community: @current_community,
        payment_intent_id: params[:payment_intent_id])
    rescue Stripe::CardError => e
      stripe_payment.update(stripe_payment_intent_status: StripePayment::PAYMENT_INTENT_FAILED)
      TransactionService::StateMachine.transition_to(tx.id, :payment_intent_failed)
      return render json: { error: t("error_messages.stripe.generic_error") }
    end

    if intent.status == StripePayment::PAYMENT_INTENT_REQUIRES_CAPTURE
      stripe_charge = intent['charges']['data'].first
      stripe_payment.update(stripe_charge_id: stripe_charge.id)
      TransactionService::StateMachine.transition_to(tx.id, :preauthorized)
      render json: {
        success: true,
        redirect_url: person_transaction_path(@current_user, params[:id])
      }
    else
      # Invalid status
      stripe_payment.update(stripe_payment_intent_status: StripePayment::PAYMENT_INTENT_INVALID)
      render json: { error: 'Invalid PaymentIntent status' }, status: :internal_server_error
    end
  end

  def stripe_failed_intent
    tx = Transaction.where(community: @current_community).find(params[:id])
    unless tx.participations.include?(@current_user)
      return
    end

    stripe_payment = tx.stripe_payments.find(params[:stripe_payment_id])
    stripe_payment.update(stripe_payment_intent_status: StripePayment::PAYMENT_INTENT_FAILED)
    TransactionService::StateMachine.transition_to(tx.id, :payment_intent_failed)
    render json: {
      success: true
    }
  end

  private

  def add_defaults(params:, shipping_enabled:, pickup_enabled:)
    default_shipping =
      case [shipping_enabled, pickup_enabled]
      when [true, false]
        {delivery: :shipping}
      when [false, true]
        {delivery: :pickup}
      when [false, false]
        {delivery: nil}
      else
        {}
      end

    params.merge(default_shipping)
  end

  def handle_tx_response(tx_response, gateway)
    if !tx_response[:success]
      render_error_response(request.xhr?, error_message(tx_response, gateway), action: :initiate)
    elsif (tx_response[:data][:gateway_fields][:redirect_url])
      xhr_json_redirect tx_response[:data][:gateway_fields][:redirect_url]
    elsif gateway == :stripe
      handle_tx_stripe_payment_intent(tx_response)
    else
      render json: {
        op_status_url: transaction_op_status_path(tx_response[:data][:gateway_fields][:process_token]),
        op_error_msg: t("error_messages.#{gateway}.generic_error")
      }
    end
  end

  def handle_tx_stripe_payment_intent(tx_response)
    tx = tx_response.data[:transaction]
    stripe_payment = tx.stripe_payments.last
    if stripe_payment.stripe_payment_intent_id.present? && stripe_payment.stripe_payment_intent_client_secret.present?
      return render json: {
        stripe_payment_intent: {
          stripe_payment_id: stripe_payment.id,
          requires_action: true,
          client_secret: stripe_payment.stripe_payment_intent_client_secret,
          confirm_intent_path: stripe_confirm_intent_listing_preauthorize_transaction_path(listing.id, tx.id),
          failed_intent_path: stripe_failed_intent_listing_preauthorize_transaction_path(listing.id, tx.id)
        }
      }
    end
    xhr_json_redirect person_transaction_path(@current_user, tx_response[:data][:transaction][:id])
  end

  def xhr_json_redirect(redirect_url)
    if request.xhr?
      render json: { redirect_url: redirect_url }
    else
      redirect_to redirect_url
    end
  end

  def error_path(tx_params)
    booking_dates = HashUtils.map_values(tx_params.slice(:start_on, :end_on).compact) { |date|
      TransactionViewUtils.stringify_booking_date(date)
    }

    {action: :initiate}.merge(booking_dates)
  end

  def render_error_response(is_xhr, error_msg, redirect_params)
    if is_xhr
      render json: { error_msg: error_msg, location: redirect_params }
    else
      flash[:error] = error_msg
      redirect_to(redirect_params)
    end
  end

  def ensure_listing_author_is_not_current_user
    if listing.author == @current_user
      flash[:error] = t("layouts.notifications.you_cannot_send_message_to_yourself")
      redirect_to(session[:return_to_content] || search_path)
    end
  end

  # Ensure that only users with appropriate visibility settings can reply to the listing
  def ensure_authorized_to_reply
    unless Policy::ListingPolicy.new(listing, @current_community, @current_user).visible?
      flash[:error] = t("layouts.notifications.you_are_not_authorized_to_view_this_content")
      redirect_to search_path
    end
  end

  def ensure_listing_is_open
    if listing.closed?
      flash[:error] = t("layouts.notifications.you_cannot_reply_to_a_closed_offer")
      redirect_to(session[:return_to_content] || search_path)
    end
  end

  def listing
    @listing ||= Listing.find_by(
      id: params[:listing_id], community_id: @current_community.id) or render_not_found!("Listing #{params[:listing_id]} not found from community #{@current_community.id}")
  end

  def ensure_can_receive_payment
    payment_type = @current_community.active_payment_types || :none

    ready = TransactionService::Transaction.can_start_transaction(transaction: {
        payment_gateway: payment_type,
        community_id: @current_community.id,
        listing_author_id: listing.author.id
      })

    unless ready[:data][:result]
      flash[:error] =
        if @current_community.allow_free_conversations?
          t("layouts.notifications.listing_author_payment_details_missing")
        else
          t("layouts.notifications.listing_author_payment_details_missing_no_free")
        end

      record_event(
        flash,
        "ProviderPaymentDetailsMissing",
        { listing_id: listing.id,
          listing_uuid: listing.uuid_object.to_s })

      redirect_to listing_path(listing)
    end
  end

  def create_preauth_transaction(opts)
    case opts[:payment_type].to_sym
    when :paypal
      # PayPal doesn't like images with cache buster in the URL
      logo_url = Maybe(opts[:community])
               .wide_logo
               .select { |wl| wl.present? }
               .url(:paypal, timestamp: false)
               .or_else(nil)

      gateway_fields =
        {
          merchant_brand_logo_url: logo_url,
          success_url: success_paypal_service_checkout_orders_url,
          cancel_url: cancel_paypal_service_checkout_orders_url(listing_id: opts[:listing].id)
        }
    when :stripe
      gateway_fields =
        {
          stripe_email: @current_user.primary_email.address,
          stripe_token: params[:stripe_token],
          shipping_address: params[:shipping_address],
          service_name: @current_community.name_with_separator(I18n.locale),
          stripe_payment_method_id: params[:stripe_payment_method_id]
        }
    end

    transaction = {
          community_id: opts[:community].id,
          community_uuid: opts[:community].uuid_object,
          listing_id: opts[:listing].id,
          listing_uuid: opts[:listing].uuid_object,
          listing_title: opts[:listing].title,
          starter_id: opts[:user].id,
          starter_uuid: opts[:user].uuid_object,
          listing_author_id: opts[:listing].author.id,
          listing_author_uuid: opts[:listing].author.uuid_object,
          listing_quantity: opts[:listing_quantity],
          unit_type: opts[:listing].unit_type,
          unit_price: opts[:listing].price,
          unit_tr_key: opts[:listing].unit_tr_key,
          unit_selector_tr_key: opts[:listing].unit_selector_tr_key,
          availability: opts[:listing].availability,
          content: opts[:content],
          payment_gateway: opts[:payment_type].to_sym,
          payment_process: :preauthorize,
          booking_fields: opts[:booking_fields],
          delivery_method: opts[:delivery_method] || :none
    }

    if(opts[:delivery_method] == :shipping)
      transaction[:shipping_price] = opts[:shipping_price]
    end

    MonthlySubscription.create(listing_id: transaction[:listing_id], listing_uuid: transaction[:listing_uuid], transaction_opts: transaction, gateway_fields: gateway_fields, person_id: opts[:user].id, person_uuid: opts[:user].uuid_object, invoice_date: Date.today, host_id: opts[:listing].author.id)

    TransactionService::Transaction.create({
        transaction: transaction,
        gateway_fields: gateway_fields
      },
      force_sync: opts[:payment_type] == :stripe || opts[:force_sync])
  end

  def paypal_event_params(listing)
    [
      "RedirectingBuyerToPayPal",
      {
        listing_id: listing.id,
        listing_uuid: listing.uuid_object.to_s,
        community_id: @current_community.id,
        marketplace_uuid: @current_community.uuid_object.to_s,
        user_logged_in: @current_user.present?
      }
    ]
  end

  def params_per_hour?
    params[:per_hour] == '1'
  end

  def initiation_success(tx_params)
    record_event(
      flash.now,
      "InitiatePreauthorizedTransaction",
      { listing_id: listing.id,
        listing_uuid: listing.uuid_object.to_s })

    order = TransactionService::Order.new(
      community: @current_community,
      tx_params: tx_params,
      listing: listing)

    render "listing_conversations/initiate",
           locals: {
             start_on: tx_params[:start_on],
             end_on: tx_params[:end_on],
             start_time: tx_params[:start_time],
             end_time: tx_params[:end_time],
             per_hour: tx_params[:per_hour],
             listing: listing,
             delivery_method: tx_params[:delivery],
             quantity: tx_params[:quantity],
             author: listing.author,
             action_button_label: translate(listing.action_button_tr_key),
             paypal_in_use: order.paypal_in_use,
             paypal_expiration_period: TransactionService::Transaction.authorization_expiration_period(:paypal),
             stripe_in_use: order.stripe_in_use,
             stripe_publishable_key: StripeHelper.publishable_key(@current_community.id),
             stripe_shipping_required: listing.require_shipping_address && tx_params[:delivery] != :pickup,
             form_action: initiated_order_path(person_id: @current_user.id, listing_id: listing.id),
             country_code: LocalizationUtils.valid_country_code(@current_community.country),
             paypal_analytics_event: paypal_event_params(listing),
             price_break_down_locals: order.price_break_down_locals
           }
  end

  def initiation_error(data)
    error_msg =
      if data.is_a?(Array)
        # Entity validation failed
        t("listing_conversations.preauthorize.invalid_parameters")
      elsif [:dates_missing,
             :end_cant_be_before_start,
             :at_least_one_day_or_night_required,
             :date_too_late
            ].include?(data[:code])
        t("listing_conversations.preauthorize.invalid_parameters")
      elsif data[:code] == :delivery_method_missing
        t("listing_conversations.preauthorize.select_delivery_method")
      elsif data[:code] == :dates_not_available
        t("listing_conversations.preauthorize.dates_not_available")
      else
        raise NotImplementedError.new("No error handler for: #{msg}, #{data.inspect}")
      end

    flash[:error] = error_msg
    logger.error(error_msg, :transaction_initiate_error, data)
    redirect_to listing_path(listing.id)
  end

  def initiated_success(tx_params)
    order = TransactionService::Order.new(
      community: @current_community,
      tx_params: tx_params,
      listing: listing)

    tx_response = create_preauth_transaction(
      payment_type: params[:payment_type].to_sym,
      community: @current_community,
      listing: listing,
      listing_quantity: order.quantity,
      user: @current_user,
      content: tx_params[:message],
      force_sync: !request.xhr?,
      delivery_method: tx_params[:delivery],
      shipping_price: order.shipping_total,
      booking_fields: {
        start_on: tx_params[:start_on],
        end_on: tx_params[:end_on],
        start_time: tx_params[:start_time],
        end_time: tx_params[:end_time],
        per_hour: tx_params[:per_hour]
      })

    handle_tx_response(tx_response, params[:payment_type].to_sym)
  end

  def initiated_error(data)
    error_msg, path =
      if data.is_a?(Array)
        # Entity validation failed
        logger.error(msg, :transaction_initiated_error, data)
        [t("listing_conversations.preauthorize.invalid_parameters"), listing_path(listing.id)]

      elsif [:dates_missing, :end_cant_be_before_start, :delivery_method_missing, :at_least_one_day_or_night_required].include?(data[:code])
        logger.error(msg, :transaction_initiated_error, data)
        [t("listing_conversations.preauthorize.invalid_parameters"), listing_path(listing.id)]
      elsif data[:code] == :agreement_missing
        # User error, no logging here
        [t("error_messages.transaction_agreement.required_error"), error_path(data[:tx_params])]
      elsif data[:code] == :dates_not_available
        [t("error_messages.booking.double_booking_payment_voided"), listing_path(listing.id)]
      else
        raise NotImplementedError.new("No error handler for: #{msg}, #{data.inspect}")
      end

    render_error_response(request.xhr?, error_msg, path)
  end

  def error_message(tx_response, gateway)
    translated_stripe_error_codes = %w(card_declined expired_card)
    if tx_response[:data].is_a?(Stripe::CardError) &&
       translated_stripe_error_codes.include?(tx_response[:data].code)
      t("error_messages.stripe.#{tx_response[:data].code}")
    elsif tx_response[:data].is_a?(TransactionService::Transaction::BookingDatesInvalid)
      tx_response[:error_msg]
    else
      t("error_messages.#{gateway}.generic_error")
    end
  end
end
# listing = Listing.find(15)
# person = Person.find_by_given_name("Georgina")
# MonthlySubscription.create(listing_id: listing.id, listing_uuid: listing.uuid, transaction_opts:nil, gateway_fields: nil, person_id: person.id, person_uuid: person.uuid_object, invoice_date: Date.today, host_id: listing.author.id)
# ms = MonthlySubscription.new(listing_id: listing.id, listing_uuid: listing.uuid, transaction_opts: transaction_opts, gateway_fields: gateway_fields, person_id: person.id, person_uuid: person.uuid_object, invoice_date: Date.yesterday, host_id: listing.author.id)
# m=MonthlySubscription.new listing_id: 15, listing_uuid: "e474adfc-afe6-11eb-bdfe-06b036800074", person_id: person.id, transaction_opts: {"community_id"=>1, "community_uuid"=>{"time_low"=>964070024, "time_mid"=>33370, "time_hi_and_version"=>4587, "clock_seq_hi_and_reserved"=>164, "clock_seq_low"=>181, "nodes"=>[6, 176, 54, 128, 0, 116]}, "listing_id"=>15, "listing_uuid"=>{"time_low"=>3832851964, "time_mid"=>45030, "time_hi_and_version"=>4587, "clock_seq_hi_and_reserved"=>189, "clock_seq_low"=>254, "nodes"=>[6, 176, 54, 128, 0, 116], "string"=>"e474adfc-afe6-11eb-bdfe-06b036800074"}, "listing_title"=>"Vegetable plot ", "starter_id"=>"J_vj4wGUENGTsl5t9eYqaw", "starter_uuid"=>{"time_low"=>968359934, "time_mid"=>33370, "time_hi_and_version"=>4587, "clock_seq_hi_and_reserved"=>164, "clock_seq_low"=>181, "nodes"=>[6, 176, 54, 128, 0, 116]}, "listing_author_id"=>"72lHsCQk71tVgAr5A9455A", "listing_author_uuid"=>{"time_low"=>958364536, "time_mid"=>45028, "time_hi_and_version"=>4587, "clock_seq_hi_and_reserved"=>138, "clock_seq_low"=>223, "nodes"=>[6, 176, 54, 128, 0, 116]}, "listing_quantity"=>1, "unit_type"=>"month", "unit_price"=>{"fractional"=>"3000.0", "currency"=>{"id"=>"gbp", "alternate_symbols"=>[], "decimal_mark"=>".", "disambiguate_symbol"=>nil, "html_entity"=>"dfd", "iso_code"=>"GBP", "iso_numeric"=>"826", "name"=>"British Pound", "priority"=>3, "smallest_denomination"=>1, "subunit"=>"Penny", "subunit_to_unit"=>100, "symbol"=>"£", "symbol_first"=>true, "thousands_separator"=>","}, "bank"=>{"store"=>{"index"=>{}, "options"=>{}, "mutex"=>{}, "in_transaction"=>false}, "rounding_method"=>nil}}, "unit_tr_key"=>nil, "unit_selector_tr_key"=>nil, "availability"=>"none", "content"=>"", "payment_gateway"=>"stripe", "payment_process"=>"preauthorize", "booking_fields"=>{"start_on"=>nil, "end_on"=>nil, "start_time"=>nil, "end_time"=>nil, "per_hour"=>nil}, "delivery_method"=>"none"}
# , gateway_fields: {"stripe_email"=>"conor@allotme.co.uk", "stripe_token"=>nil, "shipping_address"=>nil, "service_name"=>"AllotMe", "stripe_payment_method_id"=>"pm_1IzgHlIefWskAZFZDQ92NAbo"}, invoice_date: "2021-06-07", host_id: "72lHsCQk71tVgAr5A9455A"




# m=MonthlySubscription.new(listing_id: 15, listing_uuid: "e474adfc-afe6-11eb-bdfe-06b036800074", person_id: person.id, transaction_opts: {"community_id"=>1, "community_uuid"=>{"time_low"=>964070024, "time_mid"=>33370, "time_hi_and_version"=>4587, "clock_seq_hi_and_reserved"=>164, "clock_seq_low"=>181, "nodes"=>[6, 176, 54, 128, 0, 116]}, "listing_id"=>15, "listing_uuid"=>{"time_low"=>3832851964, "time_mid"=>45030, "time_hi_and_version"=>4587, "clock_seq_hi_and_reserved"=>189, "clock_seq_low"=>254, "nodes"=>[6, 176, 54, 128, 0, 116], "string"=>"e474adfc-afe6-11eb-bdfe-06b036800074"}, "listing_title"=>"Vegetable plot ", "starter_id"=>"J_vj4wGUENGTsl5t9eYqaw", "starter_uuid"=>{"time_low"=>968359934, "time_mid"=>33370, "time_hi_and_version"=>4587, "clock_seq_hi_and_reserved"=>164, "clock_seq_low"=>181, "nodes"=>[6, 176, 54, 128, 0, 116]}, "listing_author_id"=>"72lHsCQk71tVgAr5A9455A", "listing_author_uuid"=>{"time_low"=>958364536, "time_mid"=>45028, "time_hi_and_version"=>4587, "clock_seq_hi_and_reserved"=>138, "clock_seq_low"=>223, "nodes"=>[6, 176, 54, 128, 0, 116]}, "listing_quantity"=>1, "unit_type"=>"month", "unit_price"=>{"fractional"=>"3000.0", "currency"=>{"id"=>"gbp", "alternate_symbols"=>[], "decimal_mark"=>".", "disambiguate_symbol"=>nil, "html_entity"=>"dfd", "iso_code"=>"GBP", "iso_numeric"=>"826", "name"=>"British Pound", "priority"=>3, "smallest_denomination"=>1, "subunit"=>"Penny", "subunit_to_unit"=>100, "symbol"=>"£", "symbol_first"=>true, "thousands_separator"=>","}, "bank"=>{"store"=>{"index"=>{}, "options"=>{}, "mutex"=>{}, "in_transaction"=>false}, "rounding_method"=>nil}}, "unit_tr_key"=>nil, "unit_selector_tr_key"=>nil, "availability"=>"none", "content"=>"", "payment_gateway"=>"stripe", "payment_process"=>"preauthorize", "booking_fields"=>{"start_on"=>nil, "end_on"=>nil, "start_time"=>nil, "end_time"=>nil, "per_hour"=>nil}, "delivery_method"=>"none"})
