require File.join(File.dirname(__FILE__), 'constants')
require File.join(File.dirname(__FILE__), 'rest_data_builder')
require 'active_support/core_ext/hash/keys'

module AlfaBank
  class DataBuilder
    attr_accessor :request_type, :opts

    def initialize(request_type, opts)
      @request_type = request_type
      @opts = opts.symbolize_keys!
    end

    def call
      unless valid?
        raise_custom_error
      end
      opts.merge!(user_name: user_name, password: password)
      data_builder.build_params(request_type, opts)
    end

    def valid?
      fields = Constants::REQUIRED_FIELDS[request_type]
      opts.values_at(*fields).compact.size == fields.size
    rescue
      raise_custom_error
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
      AlfaBank::RestDataBuilder
    end

    private
    def raise_custom_error
      raise StandardError, 'Please check that params are correct'
    end
  end
end
