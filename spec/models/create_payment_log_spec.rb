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

require 'rails_helper'

RSpec.describe CreatePaymentLog, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
