require 'spec_helper'

describe AlfaBank::Client do
  describe '.build_params' do
    before do
      AlfaBank.configure do |config|
        config.user_name = 'tester'
        config.password  = 'tester_password'
        config.base_link = 'tester_base_link'
      end
    end

    it 'sends register_order request to AlfaBank' do
      h = build_params(AlfaBank::Constants::REQUIRED_FIELDS[:register_order])
      expect( described_class.public_send(:register_order, h) ).to be_a(Hash)
    end
    # AlfaBank::Constants::REQUIRED_FIELDS.each_pair do |request, fields|
    #   it "does not raise error for #{request}" do
    #     h = build_params(fields)
    #     expect(described_class.build_params(request, h)).to be_a(Hash)
    #   end
    # end
    #
    # it 'raises error for :test request' do
    #   h = build_params(AlfaBank::Constants::REQUIRED_FIELDS[:register_order])
    #   expect { described_class.build_params(:test, h) }
    #     .to raise_error(NoMethodError, 'test type of request does not supported by AlfaBank adapter')
    # end
  end
end
