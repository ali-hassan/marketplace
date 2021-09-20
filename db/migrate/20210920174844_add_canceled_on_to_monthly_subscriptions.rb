class AddCanceledOnToMonthlySubscriptions < ActiveRecord::Migration[5.2]
  def change
    add_column :monthly_subscriptions, :canceled_on, :date
  end
end
