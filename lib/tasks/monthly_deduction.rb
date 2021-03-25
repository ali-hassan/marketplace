desc 'Whenever rake task test'
task subscriptions: :environment do
  Rails.logger.info "Whenever task"
  MonthlySubscription.all.map do |ms|
    if ms.invoice_date == 30.days.ago
      TransactionService::Transaction.create({
                                                 transaction: ms.transaction_opts,
                                                 gateway_fields: ms.gateway_fields
                                             },
                                             force_sync: true)
    end
  end

end
