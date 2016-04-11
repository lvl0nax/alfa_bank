require File.join(File.dirname(__FILE__), 'data_builder')
require 'uri'

module AlfaBank
  class RequestSender
    attr_accessor :data_builder

    def initialize(request_type, params)
      @data_builder = DataBuilder.new(request_type, params)
    end

    def call
      uri = URI.parse(data_builder.link)
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true

      request = Net::HTTP::Post.new(uri.path, {'Content-Type' =>'application/json'})
      params = data_builder.call
      request.set_form_data params

      http.request(request)
    end
  end
end
