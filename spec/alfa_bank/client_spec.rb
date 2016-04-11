require 'spec_helper'

describe AlfaBank::Client do
  describe 'sending request' do
    before do
      AlfaBank.configure do |config|
        config.user_name = 'tester'
        config.password  = 'tester_password'
        config.base_link = 'tester_base_link'
      end
    end

    AlfaBank::Constants::REQUIRED_FIELDS.each_pair do |request, fields|
      it "sends #{request} request to AlfaBank" do
        expect_any_instance_of(AlfaBank::RequestSender).to receive(:call)
        h = build_params(fields)
        described_class.public_send(request, h)
      end
    end

    it 'raises error for :test request' do
      h = build_params(AlfaBank::Constants::REQUIRED_FIELDS[:register_order])
      expect { described_class.public_send(:test, h) }
        .to raise_error(NoMethodError)
    end
  end
end
