require 'singleton'
require File.join(File.dirname(__FILE__), "data_builder")

module AlfaBank
  class Client
    include Singleton

    class << self
      def register_order(params)
        send_request(:register_order , params)
      end

      def preauth_register_order(params)
        send_request(:preauth_register_order , params)
      end

      def finish_order(params)
        send_request(:finish_order , params)
      end

      def order_status(params)
        send_request(:order_status , params)
      end

      def extend_request_order_status(params)
        send_request(:extend_request_order_status , params)
      end

      def reverse_order_payment(params)
        send_request(:reverse_order_payment , params)
      end

      def refund_order_sum(params)
        send_request(:refund_order_sum , params)
      end

      def check_3ds(params)
        send_request(:check_3ds , params)
      end

      def adds_params_to_order(params)
        send_request(:adds_params_to_order , params)
      end

      def payment_statistic(params)
        send_request(:payment_statistic , params)
      end

      def payment_to_otherway(params)
        send_request(:payment_to_otherway , params)
      end

      def binding_payment(params)
        send_request(:binding_payment , params)
      end

      def unbind_card(params)
        send_request(:unbind_card , params)
      end

      def bind_card(params)
        send_request(:bind_card , params)
      end

      def extend_binding(params)
        send_request(:extend_binding , params)
      end

      def binding_list(params)
        send_request(:binding_list , params)
      end


      private

      def send_request(request_type, opts)
        instance.send(:send_request, request_type, opts)
      end
    end

    def send_request(request_type, opts)

    end
  end
end
