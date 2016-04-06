require "spec_helper"

module AlfaBank
  describe Configuration do
    describe "#user_name" do
      it "default value is 'user_name'" do
        Configuration.new.user_name = 'user_name'
      end
    end

    describe "#user_name=" do
      it "can set value" do
        config = Configuration.new
        config.user_name = 'test_user_name'
        expect(config.user_name).to eq('test_user_name')
      end
    end

    describe "#password" do
      it "default value is 'password'" do
        Configuration.new.password = 'password'
      end
    end

    describe "#password=" do
      it "can set value" do
        config = Configuration.new
        config.password = 'test_password'
        expect(config.password).to eq('test_password')
      end
    end

    describe "#base_link" do
      it "default value is 'http://alfa_bank_test_url.ru'" do
        Configuration.new.base_link = 'http://alfa_bank_test_url.ru'
      end
    end

    describe "#base_link=" do
      it "can set value" do
        config = Configuration.new
        config.base_link = 'test_base_link'
        expect(config.base_link).to eq('test_base_link')
      end
    end
  end
end
