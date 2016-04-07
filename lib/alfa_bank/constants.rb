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
    REGISTER_ORDER_FIELDS_MAP = {
      order_number:         :orderNumber,
      user_name:            :userName,
      password:             :password,
      return_url:           :returnUrl,
      amount:               :amount,
      currency:             :currency,
      language:             :language,
      description:          :description,
      page_view:            :pageView,
      merchant_login:       :merchantLogin,
      json_params:          :jsonParams,
      session_timeout_secs: :sessionTimeoutSecs,
      expiration_date:      :expirationDate,
      client_id:            :clientId,
      fail_url:             :failUrl,
      binding_id:           :bindingId
    }.freeze

    PREAUTH_REGISTER_ORDER_FIELDS_MAP = {
      order_number:         :orderNumber,
      user_name:            :userName,
      password:             :password,
      return_url:           :returnUrl,
      fail_url:             :failUrl,
      amount:               :amount,
      currency:             :currency,
      language:             :language,
      description:          :description,
      page_view:            :pageView,
      merchant_login:       :merchantLogin,
      json_params:          :jsonParams,
      session_timeout_secs: :sessionTimeoutSecs,
      expiration_date:      :expirationDate,
      client_id:            :clientId,
      binding_id:           :bindingId
    }.freeze

    FINISH_ORDER_FIELDS_MAP = {
      order_id:       :orderId,
      user_name:      :userName,
      password:       :password,
      amount:         :amount
    }.freeze

    ORDER_STATUS_FIELDS_MAP = {
      order_id:       :orderId,
      user_name:      :userName,
      password:       :password,
      language:       :language
    }.freeze

    EXTEND_REQUEST_ORDER_STATUS_FIELDS_MAP = {
      order_number:   :orderNumber,
      order_id:       :orderId,
      user_name:      :userName,
      password:       :password,
      language:       :language
    }.freeze

    REVERSE_ORDER_PAYMENT_FIELDS_MAP = {
      order_id:       :orderId,
      user_name:      :userName,
      password:       :password,
      language:       :language
    }.freeze

    REFUND_ORDER_SUM_FIELDS_MAP = {
      order_id:       :orderId,
      user_name:      :userName,
      password:       :password,
      amount:         :amount
    }.freeze

    CHECK_3DS_FIELDS_MAP = {
      user_name:      :userName,
      pan:            :pan,
      password:       :password
    }.freeze

    ADDS_PARAMS_TO_ORDER_FIELDS_MAP = {
      order_id:       :orderId,
      user_name:      :userName,
      password:       :password,
      params:         :params,
      language:       :language
    }.freeze

    PAYMENT_STATISTIC_FIELDS_MAP = {
      user_name:      :userName,
      password:       :password,
      language:       :language,
      page:           :page,
      size:           :size,
      from:           :from,
      to:             :to,
      marchants:      :marchants
    }.freeze

    PAYMENT_TO_OTHERWAY_FIELDS_MAP = {
      order_number:   :MDORDER,
      user_name:      :userName,
      password:       :password,
      language:       :language,
      payment_way:    :paymentWay
    }.freeze

    BINDING_PAYMENT_FIELDS_MAP = {
      order_number:   :mdOrder,
      user_name:      :userName,
      password:       :password,
      cvc:            :cvc,
      language:       :language,
      binding_id:     :bindingId
    }.freeze

    UNBIND_CARD_FIELDS_MAP = {
      user_name:      :userName,
      password:       :password,
      binding_id:     :bindingId
    }.freeze

    BIND_CARD_FIELDS_MAP = {
      user_name:      :userName,
      password:       :password,
      binding_id:     :bindingId
    }.freeze

    EXTEND_BINDING_FIELDS_MAP = {
      user_name:      :userName,
      password:       :password,
      new_expiry:     :newExpiry,
      language:       :language,
      binding_id:     :bindingId
    }.freeze

    BINDING_LIST_FIELDS_MAP = {
      user_name:      :userName,
      password:       :password,
      client_id:      :clientId
    }.freeze
  end
end
