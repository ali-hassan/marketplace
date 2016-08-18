# == Schema Information
#
# Table name: payments
#
#  id                       :integer          not null, primary key
#  payer_id                 :string(255)
#  recipient_id             :string(255)
#  transaction_id           :integer
#  status                   :string(255)
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  community_id             :integer
#  payment_gateway_id       :integer
#  sum_cents                :integer
#  currency                 :string(255)
#  type                     :string(255)      default("BraintreePayment")
#  braintree_transaction_id :string(255)
#
# Indexes
#
#  index_payments_on_conversation_id  (transaction_id)
#  index_payments_on_payer_id         (payer_id)
#

describe Payment, type: :model do

  PaymentSubclass = Class.new(Payment) do
    attr_accessor :total_sum, :commission_from_seller
    attr_accessible :commission_from_seller
  end

  let(:payment) { PaymentSubclass.new(commission_from_seller: 12) }
  let(:payment2) { PaymentSubclass.new(commission_from_seller: 10) }

  describe "#total_commission" do
    it "calculates service fee from price and commission percentage" do
      payment.total_sum = Money.new(10000, "EUR")
      expect(payment.total_commission.cents).to eq(1200)

      payment2.total_sum = Money.new(2900, "EUR")
      expect(payment2.total_commission.cents).to eq(290)
    end
  end

  describe "seller_gets" do
    it "calculates sellers gets" do
      payment.total_sum = Money.new(10000, "EUR")
      expect(payment.seller_gets.cents).to eq(8800)

      payment2.total_sum = Money.new(2900, "EUR")
      expect(payment2.seller_gets.cents).to eq(2610)
    end
  end
end
