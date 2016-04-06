require File.join(File.dirname(__FILE__), "alfa_bank", "client")
require File.join(File.dirname(__FILE__), "alfa_bank", "configuration")
require File.join(File.dirname(__FILE__), "alfa_bank", "version")

module AlfaBank
  class << self
    attr_writer :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
