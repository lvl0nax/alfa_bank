require "spec_helper"

describe AlfaBank do
  describe "#configure" do
    before do
      AlfaBank.configure do |config|
        config.user_name = "tester"
        config.password = "tester_password"
        config.base_link = "tester_base_link"
      end
    end

    it "returns a setted user_name" do
      user_name = AlfaBank::DataBuilder.new(:test, {}).user_name

      expect(user_name).to eq("tester")
    end

    it "returns a setted password" do
      password = AlfaBank::DataBuilder.new(:test, {}).password

      expect(password).to eq("tester_password")
    end

    it "returns a setted base_link" do
      link = AlfaBank::DataBuilder.new(:register_order, {}).link

      expect(link).to include("tester_base_link")
    end
  end
end
