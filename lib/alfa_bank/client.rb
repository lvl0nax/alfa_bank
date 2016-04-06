require 'singleton'
require File.join(File.dirname(__FILE__), "data_builder")

module AlfaBank
  class Client
    include Singleton

    class << self


      private

      def send_request(request_type, opts = {})
        instance.send(:send_request, request_type, opts)
      end
    end

    def send_request(request_type, opts)

    end
  end
end
