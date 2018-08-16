# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesECommerceApi
  # Request of payment for refund action.
  class RefundMilePaymentRequest < BaseModel
    # An identifier for online store.
    # @return [String]
    attr_accessor :store_code

    # A token represents a payment object for provisioning.
    # @return [String]
    attr_accessor :payment_provision_token

    # An amount of the payment.
    # @return [Amount]
    attr_accessor :amount

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['store_code'] = 'store_code'
      @_hash['payment_provision_token'] = 'payment_provision_token'
      @_hash['amount'] = 'amount'
      @_hash
    end

    def initialize(store_code = nil,
                   payment_provision_token = nil,
                   amount = nil)
      @store_code = store_code
      @payment_provision_token = payment_provision_token
      @amount = amount
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      store_code = hash['store_code']
      payment_provision_token = hash['payment_provision_token']
      amount = Amount.from_hash(hash['amount']) if hash['amount']

      # Create object from extracted values.
      RefundMilePaymentRequest.new(store_code,
                                   payment_provision_token,
                                   amount)
    end
  end
end
