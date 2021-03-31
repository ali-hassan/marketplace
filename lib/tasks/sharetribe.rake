namespace :sharetribe do

  namespace :community_updates do
    desc "Sends the community updates email to everyone who should receive it now"
    task :deliver => :environment do |t, args|
      CommunityMailer.deliver_community_updates
    end
  end

  namespace :monthly_subscription do
    desc "Sends the community updates email to everyone who should receive it now"
    task :subscriptions => :environment do |t, args|
      Rails.logger.info "Monthly Deduction Against Stripe Account"
      MonthlySubscription.all.map do |ms|
        if ms.invoice_date <= 30.days.ago
          opts = ms.transaction_opts
          @community  = Community.find_by_id(opts["community_id"])
          @listing    = ms.listing
          @user       = ms.person

          gateway_fields = {stripe_email: ms.gateway_fields["stripe_email"], stripe_token: ms.gateway_fields["stripe_token"], shipping_address: ms.gateway_fields["stripe_token"], service_name: ms.gateway_fields["stripe_token"], stripe_payment_method_id: ms.gateway_fields["stripe_payment_method_id"]}


          transaction    = {
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

              booking_fields: {
                  start_on: Date.today,
                  end_on: Date.today + 1.month,
                  start_time: ms.transaction_opts["booking_fields"]["start_time"],
                  end_time: ms.transaction_opts["booking_fields"]["end_time"],
                  per_hour: ms.transaction_opts["booking_fields"]["per_hour"]
              },
              delivery_method: ms.transaction_opts["delivery_method"]
          }


          TransactionService::Transaction.create({transaction: transaction, gateway_fields: gateway_fields}, force_sync: true)
        end
      end
    end
  end

  namespace :landing_pages do
    desc "Install sample landing page into initializers/landing_page.rb"
    task :install_static => :environment do
      source = File.join(Rails.root, "app", "services", "custom_landing_page", "example_data.rb")
      dest = File.join(Rails.root, "config", "initializers", "landing_page.rb")

      # patch example_data
      text = File.read(source)
      text = text.gsub(/ExampleData/, "StaticData")
      # dont copy TEMPLATE_STR
      text = text.gsub(/^\s*TEMPLATE_STR = <<JSON.*JSON/m, "")
      File.open(dest, "w") {|file| file.puts text }

      puts "Created config/initializers/landing_page.rb with static template."
      puts "This needs clp_static_enabled: true in config.yml for it to take effect."
    end
  end

  desc "Cleans the auth_tokens table in the DB by deleting expired ones"
  task :delete_expired_auth_tokens => :environment do
    AuthToken.delete_expired
  end

  desc "Retries set express checkouts"
  task :retry_and_clean_paypal_tokens => :environment do
    Delayed::Job.enqueue(PaypalService::Jobs::RetryAndCleanTokens.new(1.hour.ago))
  end

  desc "Synchnorizes verified email address states from SES to local DB"
  task :synchronize_verified_with_ses => :environment do
    EmailService::API::Api.addresses.enqueue_batch_sync()
  end

  namespace :person_custom_fields do
    desc "Copying person's phone number to custom fields"
    task :copy_phone_number_community, [:community_ident] => :environment do |t, args|
      community_ident = args[:community_ident]
      if community_ident.blank?
        raise 'Invalid marketplace ident.'
      end

      community = Community.find_by!(ident: community_ident)
      PersonPhoneCopyist.copy_community(community)
    end

    desc "Remove person's phone number from custom fields"
    task :remove_phone_number_community, [:community_ident] => :environment do |t, args|
      community_ident = args[:community_ident]
      if community_ident.blank?
        raise 'Invalid marketplace ident.'
      end

      community = Community.find_by!(ident: community_ident)
      community.person_custom_fields.phone_number.destroy_all
    end
  end
end
