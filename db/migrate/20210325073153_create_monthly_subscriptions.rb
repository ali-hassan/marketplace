class CreateMonthlySubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :monthly_subscriptions do |t|
      t.integer :listing_id
      t.string :listing_uuid
      t.string :person_id
      t.string :person_uuid
      t.json :transaction_opts
      t.json :gateway_fields
      t.date :invoice_date

      t.timestamps
    end
  end
end
