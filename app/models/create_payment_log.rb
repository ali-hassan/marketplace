# == Schema Information
#
# Table name: create_payment_logs
#
#  id                      :bigint           not null, primary key
#  next_payment_on         :string(255)
#  monthly_subscription_id :integer
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#

class CreatePaymentLog < ApplicationRecord
  belongs_to :monthly_subscription
end
