# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesECommerceApi
  # Representing a payment.
  class Payment < BaseModel
    # A token represents a payment object for provisioning.
    # @return [String]
    attr_accessor :payment_provision_token

    # Create date time of payment. The format is ISO 8601 date and time.
    # @return [String]
    attr_accessor :created_at

    # Last update date time of payment. The format is ISO 8601 date and time.
    # @return [String]
    attr_accessor :updated_at

    # The status of payment.
    # @return [PaymentStatusEnum]
    attr_accessor :status

    # An amount of payment.
    # @return [Amount]
    attr_accessor :amount

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['payment_provision_token'] = 'payment_provision_token'
      @_hash['created_at'] = 'created_at'
      @_hash['updated_at'] = 'updated_at'
      @_hash['status'] = 'status'
      @_hash['amount'] = 'amount'
      @_hash
    end

    def initialize(payment_provision_token = nil,
                   created_at = nil,
                   updated_at = nil,
                   status = nil,
                   amount = nil)
      @payment_provision_token = payment_provision_token
      @created_at = created_at
      @updated_at = updated_at
      @status = status
      @amount = amount
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      payment_provision_token = hash['payment_provision_token']
      created_at = hash['created_at']
      updated_at = hash['updated_at']
      status = hash['status']
      amount = Amount.from_hash(hash['amount']) if hash['amount']

      # Create object from extracted values.
      Payment.new(payment_provision_token,
                  created_at,
                  updated_at,
                  status,
                  amount)
    end
  end
end