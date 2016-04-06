require File.join(File.dirname(__FILE__), "constants")
require 'active_support/core_ext/hash/keys'

module AlfaBank
  class DataBuilder
    attr_accessor :request_type, :opts

    def initialize(request_type, opts)
      @request_type = request_type
      @opts = opts.symbolize_keys!
    end

    def call
      opts.merge!(user_name: user_name, password: password)
      data_builder.public_send(:request_type, opts)
    end

    def valid?
      fields = Constants::REQUIRED_FIELDS[request_type]
      opts.values_at(*fields).compact.size == fields.size
    end

    def link
      "#{AlfaBank.configuration.base_link}/#{Constants::ALFA_LINKS[request_type]}"
    end

    def user_name
      AlfaBank.configuration.user_name
    end

    def password
      AlfaBank.configuration.password
    end

    # TODO: add depandency from config (soap|rest)
    def data_builder
      RestDataBuilder
    end
  end
end
