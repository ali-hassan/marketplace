class CreateCreatePaymentLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :create_payment_logs do |t|
      t.string :next_payment_on
      t.integer :monthly_subscription_id

      t.timestamps
    end
  end
end
