class AddHostIdToMonthlySubscription < ActiveRecord::Migration[5.2]
  def change
    add_column :monthly_subscriptions, :host_id, :string
  end
end
