class AddCancelSubscriptionToMonthlySubscriptions < ActiveRecord::Migration[5.2]
  def change
    add_column :monthly_subscriptions, :cancel_subscription, :boolean, default: false
  end
end
