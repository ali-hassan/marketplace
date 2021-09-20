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
      MonthlySubscription.where("invoice_date <= ?", 1.month.ago).map do |ms|
        Stripe.api_key = APP_CONFIG.stripe_key
        opts = ms.transaction_opts
        @community  = Community.find_by_id(opts["community_id"])
        @listing    = ms.listing
        @user       = ms.person
        puts "capturing payment"
        sp = Stripe::Charge.create({amount: @listing.price.to_i*100, currency:  @listing.price.currency.id.to_s, customer: @user.stripe_customer_id, description: @listing.title, capture: true}) rescue false
        puts "Payment captured"
        puts "SP: #{sp}"
        unless sp.nil? || sp == false
          ms.update invoice_date: Date.today
          puts "updated monthly_subscription invoice date= #{ms.invoice_date}"
          puts "Creating Logs"
          CreatePaymentLog.create monthly_subscription_id: ms.id, next_payment_on: Time.now + 1.month
          puts "End logs"
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
