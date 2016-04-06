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

  end

  describe '#data' do

  end
end
