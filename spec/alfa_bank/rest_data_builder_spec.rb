require 'spec_helper'

describe AlfaBank::RestDataBuilder do
  describe '.build_params' do
    AlfaBank::Constants::REQUIRED_FIELDS.each_pair do |request, fields|
      it "does not raise error for #{request}" do
        h = build_params(fields)
        expect(described_class.build_params(request, h)).to be_a(Hash)
      end
    end

    it 'raises error for :test request' do
      h = build_params(AlfaBank::Constants::REQUIRED_FIELDS[:register_order])
      expect { described_class.build_params(:test, h) }
        .to raise_error(NoMethodError, 'test type of request does not supported by AlfaBank adapter')
    end
  end
end
