# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesEcommerceApi
  # Representing a payment for order.
  class PaymentItem < BaseModel
    # A type of payment.
    # @return [PaymentTypeEnum]
    attr_accessor :type

    # Amount of current payment.
    # @return [Float]
    attr_accessor :amount

    # A token represents a payment object for provisioning.
    # @return [String]
    attr_accessor :payment_provision_token

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['type'] = 'type'
      @_hash['amount'] = 'amount'
      @_hash['payment_provision_token'] = 'payment_provision_token'
      @_hash
    end

    def initialize(type = nil,
                   amount = nil,
                   payment_provision_token = nil)
      @type = type
      @amount = amount
      @payment_provision_token = payment_provision_token
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      type = hash['type']
      amount = hash['amount']
      payment_provision_token = hash['payment_provision_token']

      # Create object from extracted values.
      PaymentItem.new(type,
                      amount,
                      payment_provision_token)
    end
  end
end
