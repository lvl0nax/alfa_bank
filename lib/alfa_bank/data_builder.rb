require File.join(File.dirname(__FILE__), "constants")
require 'active_support/core_ext/hash/keys'

module AlfaBank
  class DataBuilder
    attr_accessor :request_type, :opts

    def initialize(request_type, opts)
      @request_type = request_type
      @opts = opts.symbolize_keys!
    end

    def valid?
      fields = Constants::REQUIRED_FIELDS[request_type]
      opts.values_at(*fields).compact.size == fields.size
    end
  end
end
