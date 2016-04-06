require File.join(File.dirname(__FILE__), "constants")

module AlfaBank
  module RestDataBuilder
    def self.register_order(args)
      params = {}
      Constants::POSSIBLE_FIELDS[:register_order].each do |field|
        params[Constants::ALFA_BANK_PARAMS_MAP[field]] = args[field] if args[field]
      end
    end

    def self.preauth_register_order(args)
    end

    def self.finish_order(args)

    end

    def self.order_status(args)

    end

    def self.extend_request_order_status(args)

    end

    def self.reverse_order_payment(args)

    end

    def self.refund_order_sum(args)

    end

    def self.check_3ds(args)

    end

    def self.adds_args_to_order(args)

    end

    def self.payment_statistic(args)

    end

    def self.payment_to_otherway(args)

    end

    def self.binding_payment(args)

    end

    def self.unbind_card(args)

    end

    def self.bind_card(args)

    end

    def self.extend_binding(args)

    end

    def self.binding_list(args)

    end

  end
end
