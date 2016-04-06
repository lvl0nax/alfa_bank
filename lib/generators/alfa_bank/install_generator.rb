require 'rails/generators/base'

module AlfaBank
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)
      desc "Creates alfa_bank_credentials initializer for your application"

      def copy_initializer
        template "alfa_bank_credentials.rb", "config/initializers/alfa_bank_credentials.rb"

        puts "Install complete! Please, add credentials to config/initializers/alfa_bank_credentials.rb"
      end
    end
  end
end
