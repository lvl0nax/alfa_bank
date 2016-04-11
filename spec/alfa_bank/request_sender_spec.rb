require 'spec_helper'

describe AlfaBank::RequestSender do
  describe 'sending request' do
    before do
      AlfaBank.configure do |config|
        config.user_name = 'tester'
        config.password  = 'tester_password'
        config.base_link = 'https://alfa-bank.com/rest'
      end
    end

    AlfaBank::Constants::REQUIRED_FIELDS.each_pair do |request, fields|
      it "sends http request to AlfaBank for  #{request}" do
        expect_any_instance_of(Net::HTTP).to receive(:request)
        h = build_params(fields)
        described_class.new(request, h).call
      end
    end
  end
end
