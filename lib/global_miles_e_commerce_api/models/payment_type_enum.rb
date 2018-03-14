# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesECommerceApi
  # A type of payment.
  class PaymentTypeEnum
    PAYMENT_TYPE_ENUM = [
      # Credit Card
      CREDIT_CARD = 'credit_card'.freeze,

      # Debit Card
      DEBIT_CARD = 'debit_card'.freeze,

      # Bank Transfers / Electronic Funds Transfer (EFT)
      BANK_TRANSFER = 'bank_transfer'.freeze,

      # Cash
      CASH = 'cash'.freeze,

      # Digital Wallet
      DIGITAL_WALLET = 'digital_wallet'.freeze,

      # Mobile Payment
      MOBILE_PAYMENT = 'mobile_payment'.freeze,

      # Gitf Card
      GIFT_CARD = 'gift_card'.freeze,

      # Point Payment provided by Global Miles
      POINT_PAYMENT = 'point_payment'.freeze,

      # Other
      OTHER = 'other'.freeze
    ].freeze
  end
end
