module AlfaBank
  class Constants
    ALFA_LINKS = {
      register_order:               'register.do',
      preauth_register_order:       'registerPreAuth.do',
      finish_order:                 'deposit.do',
      order_status:                 'getOrderStatus.do',
      extend_request_order_status:  'getOrderStatusExtended.do',
      reverse_order_payment:        'reverse.do',
      refund_order_sum:             'refund.do',
      check_3ds:                    'verifyEnrollment.do',
      adds_params_to_order:         'addParams.do',
      payment_statistic:            'getLastOrdersForMerchants.do',
      payment_to_otherway:          'paymentotherway.do',
      binding_payment:              'paymentOrderBinding.do',
      unbind_card:                  'unBindCard.do',
      bind_card:                    'bindCard.do',
      extend_binding:               'extendBinding.do',
      binding_list:                 'getBindings.do'
    }.freeze

    REQUIRED_FIELDS = {
      register_order: [
        :user_name, :password, :order_number, :amount, :return_url
      ],
      preauth_register_order: [
        :user_name, :password, :order_number, :amount, :return_url
      ],
      finish_order: [
        :user_name, :password, :order_id, :amount
      ],
      order_status: [
        :user_name, :password, :order_id
      ],
      extend_request_order_status: [
        :user_name, :password, :order_id
      ],
      reverse_order_payment: [
        :user_name, :password, :order_id
      ],
      refund_order_sum: [
        :user_name, :password, :order_id, :amount
      ],
      check_3ds: [
        :user_name, :password, :pan
      ],
      adds_params_to_order: [
        :user_name, :password, :order_id, :params
      ],
      payment_statistic: [
        :user_name, :password, :size, :from, :to, :transaction_states, :merchants
      ],
      payment_to_otherway: [
        :user_name, :password, :mdorder, :payment_way
      ],
      binding_payment: [
        :user_name, :password, :order_id, :binding_id
      ],
      unbind_card: [
        :user_name, :password, :binding_id
      ],
      bind_card: [
        :user_name, :password, :binding_id
      ],
      extend_binding: [
        :user_name, :password, :binding_id, :new_expiry
      ],
      binding_list: [
        :user_name, :password, :client_id
      ]
    }.freeze

    # TODO: adds dull list of fields
    POSSIBLE_FIELDS = {
      register_order: [
        :user_name, :password, :order_number, :amount, :return_url
      ],
      preauth_register_order: [
        :user_name, :password, :order_number, :amount, :return_url
      ],
      finish_order: [
        :user_name, :password, :order_id, :amount
      ],
      order_status: [
        :user_name, :password, :order_id
      ],
      extend_request_order_status: [
        :user_name, :password, :order_id
      ],
      reverse_order_payment: [
        :user_name, :password, :order_id
      ],
      refund_order_sum: [
        :user_name, :password, :order_id, :amount
      ],
      check_3ds: [
        :user_name, :password, :pan
      ],
      adds_params_to_order: [
        :user_name, :password, :order_id, :params
      ],
      payment_statistic: [
        :user_name, :password, :size, :from, :to, :transaction_states, :merchants
      ],
      payment_to_otherway: [
        :user_name, :password, :mdorder, :payment_way
      ],
      binding_payment: [
        :user_name, :password, :order_id, :binding_id
      ],
      unbind_card: [
        :user_name, :password, :binding_id
      ],
      bind_card: [
        :user_name, :password, :binding_id
      ],
      extend_binding: [
        :user_name, :password, :binding_id, :new_expiry
      ],
      binding_list: [
        :user_name, :password, :client_id
      ]
    }.freeze

    ALFA_BANK_PARAMS_MAP = {
      order_number:   :orderNumber,
      user_name:      :userName,
      password:       :password,
      return_url:     :returnUrl,
      amount:         :amount,
      currency:       :currency,
      language:       :language,
      client_id:      :clientId,
      fail_url:       :failUrl,
      binding_id:     :bindingId
    }.freeze
  end
end
