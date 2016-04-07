require File.join(File.dirname(__FILE__), "constants")

module AlfaBank
  module RestDataBuilder
    def self.build_params(key, args)
      unless Constants::ALFA_LINKS.key?(key)
        raise NoMethodError, "#{key} type of request does not supported by AlfaBank adapter"
      end
      params = {}
      Constants.const_get("#{key.upcase}_FIELDS_MAP").each_pair do |arg, alfa_param|
        params[alfa_param] = args[arg] if args[arg]
      end
      params
    end
  end
end
