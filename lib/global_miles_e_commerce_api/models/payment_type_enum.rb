# global_miles_e_commerce_api
#
# This file was automatically generated by APIMATIC v2.0
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

      # Pay with miles provided by Global Miles
      MILE_PAYMENT = 'mile_payment'.freeze,

      # Other
      OTHER = 'other'.freeze
    ].freeze
  end
end
