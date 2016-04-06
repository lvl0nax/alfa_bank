require 'spec_helper'

describe AlfaBank::DataBuilder do
  describe '#valid?' do
    context 'required fields should not be nil' do
      AlfaBank::Constants::REQUIRED_FIELDS.each_pair do |request, fields|
        it "returns true for #{request}" do
          h = build_params(fields)
          expect(described_class.new(request, h).valid?).to be true
        end

        fields.each do |f|
          it "returns false for #{request} with #{f} field eql nil" do
            h = build_params(fields)
            h[f] = nil
            expect(described_class.new(request, h).valid?).to be false
          end

          it "returns false for #{request} with absent #{f} field" do
            h = build_params(fields)
            h.delete(f)
            expect(described_class.new(request, h).valid?).to be false
          end
        end
      end
    end
  end

  describe '#link' do
    it "returns correct link for key" do
      AlfaBank.configure do |config|
        config.user_name = "tester"
        config.password = "tester_password"
        config.base_link = "tester_base_link"
      end
      expect(described_class.new(:register_order, {}).link).to eq('tester_base_link/register.do')
    end
  end

  describe '#data' do
    # before do
    #   AlfaBank.configure do |config|
    #     config.user_name = "tester"
    #     config.password = "tester_password"
    #     config.base_link = "tester_base_link"
    #   end
    # end

  end
end
