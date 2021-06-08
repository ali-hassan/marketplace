# == Schema Information
#
# Table name: monthly_subscriptions
#
#  id               :bigint           not null, primary key
#  listing_id       :integer
#  listing_uuid     :string(255)
#  person_id        :string(255)
#  person_uuid      :string(255)
#  transaction_opts :json
#  gateway_fields   :json
#  invoice_date     :date
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  host_id          :string(255)
#  is_active        :boolean          default(TRUE)
#

require 'rails_helper'

RSpec.describe MonthlySubscription, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
