
task subscriptions: :environment do
  Rails.logger.info "Whenever task"
  MonthlySubscription.all.map do |ms|
    if ms.invoice_date == 1.month.ago
      gateway_fields = {stripe_email: ms.gateway_fields["stripe_email"], stripe_token: ms.gateway_fields["stripe_token"], shipping_address: ms.gateway_fields["stripe_token"], service_name: ms.gateway_fields["stripe_token"], stripe_payment_method_id: ms.gateway_fields["stripe_payment_method_id"]}
      opts = ms.transaction_opts
      @community  = Community.find_by_id(opts["community_id"])
      @listing    = ms.listing
      @user       = ms.person


      transaction = {
          community_id: @community.id,
          community_uuid: @community.uuid_object,
          listing_id: @listing.id,
          listing_uuid: @listing.uuid_object,
          listing_title: @listing.title,
          starter_id: @user.id,
          starter_uuid: @user.uuid_object,
          listing_author_id: @listing.author.id,
          listing_author_uuid: @listing.author.uuid_object,
          listing_quantity: opts["listing_quantity"],
          unit_type: @listing.unit_type,
          unit_price: @listing.price,
          unit_tr_key: @listing.unit_tr_key,
          unit_selector_tr_key: @listing.unit_selector_tr_key,
          availability: @listing.availability,
          content: opts["content"],
          payment_gateway: :stripe,
          payment_process: :preauthorize,
          booking_fields: opts["booking_fields"],
          delivery_method: opts["delivery_method"] || :none
      }

      transaction    = {community_id: ms.transaction_opts["community_id"],
                        community_uuid: ms.transaction_opts["community_uuid"],
                        listing_id: ms.listing_id,
                        listing_uuid: ms.transaction_opts["listing_uuid"],
                        listing_title: ms.transaction_opts["listing_title"],
                        starter_id: ms.transaction_opts["starter_id"],
                        starter_uuid: ms.transaction_opts["starter_uuid"],
                        listing_author_id: ms.transaction_opts["listing_author_id"],
                        listing_author_uuid: ms.transaction_opts["listing_author_uuid"],
                        listing_quantity: ms.transaction_opts["listing_quantity"],
                        unit_type: ms.transaction_opts["unit_type"],
                        unit_price: ms.transaction_opts["unit_price"],
                        unit_tr_key: ms.transaction_opts["unit_tr_key"],
                        unit_selector_tr_key: ms.transaction_opts["unit_selector_tr_key"],
                        availability: ms.transaction_opts["availability"],
                        content: ms.transaction_opts["content"],
                        payment_gateway: ms.transaction_opts["payment_gateway"],
                        payment_process: ms.transaction_opts["payment_process"],

                        booking_fields: {start_on: ms.transaction_opts["booking_fields"]["start_on"],
                                         end_on: ms.transaction_opts["booking_fields"]["end_on"],
                                         start_time: ms.transaction_opts["booking_fields"]["start_time"],
                                         end_time: ms.transaction_opts["booking_fields"]["end_time"],
                                         per_hour: ms.transaction_opts["booking_fields"]["per_hour"]
                        },
                        delivery_method: ms.transaction_opts["delivery_method"]}

      debugger
      TransactionService::Transaction.create({transaction: transaction, gateway_fields: gateway_fields}, force_sync: true)
    end
  end

end
