class AddIsActiveToMonthlySubscriptions < ActiveRecord::Migration[5.2]
  def change
    add_column :monthly_subscriptions, :is_active, :boolean, default: true
  end
end
