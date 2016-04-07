require 'spec_helper'

describe AlfaBank::Constants do
  it 'should contains ALFA_LINKS with correct keys' do
    arr = [:register_order, :preauth_register_order, :finish_order, :order_status,
           :extend_request_order_status, :reverse_order_payment, :refund_order_sum,
           :check_3ds, :adds_params_to_order, :payment_statistic, :payment_to_otherway,
           :binding_payment, :unbind_card, :bind_card, :extend_binding, :binding_list]
    expect(described_class::ALFA_LINKS.keys).to match_array(arr)
  end

  it 'should contains REQUIRED_FIELDS with correct keys' do
    arr = [:register_order, :preauth_register_order, :finish_order, :order_status,
           :extend_request_order_status, :reverse_order_payment, :refund_order_sum,
           :check_3ds, :adds_params_to_order, :payment_statistic, :payment_to_otherway,
           :binding_payment, :unbind_card, :bind_card, :extend_binding, :binding_list]
    expect(described_class::REQUIRED_FIELDS.keys).to match_array(arr)
  end

  AlfaBank::Constants::ALFA_LINKS.each_key do |request|
    it "should contains #{request} with correct keys" do
      expect(described_class.const_get("#{request.upcase}_FIELDS_MAP")).to be_a(Hash)
    end
  end
end
