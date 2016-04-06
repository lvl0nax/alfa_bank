module AlfaBank
  class Configuration
    attr_accessor :user_name, :password, :base_link

    def initialize
      @user_name = "user_name"
      @password = "password"
      @base_link = "http://alfa_bank_test_url.ru"
    end
  end
end
