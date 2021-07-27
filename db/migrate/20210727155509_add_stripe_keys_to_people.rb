class AddStripeKeysToPeople < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :stripe_token, :string
    add_column :people, :stripe_customer_id, :string
  end
end
