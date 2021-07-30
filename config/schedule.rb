
every :month, at: '12am', roles: [:db, :app]  do
  rake "sharetribe:monthly_subscription:subscriptions"
end
