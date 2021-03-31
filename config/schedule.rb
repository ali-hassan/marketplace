
every :month, at: '12am' do
  rake "sharetribe:monthly_subscription:subscriptions"
end
