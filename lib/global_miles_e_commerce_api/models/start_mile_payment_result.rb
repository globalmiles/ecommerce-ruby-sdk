# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesECommerceApi
  # Result object of payment for start action.
  class StartMilePaymentResult < BaseModel
    # A token represents a payment object for provisioning.
    # @return [String]
    attr_accessor :payment_provision_token

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['payment_provision_token'] = 'payment_provision_token'
      @_hash
    end

    def initialize(payment_provision_token = nil)
      @payment_provision_token = payment_provision_token
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      payment_provision_token = hash['payment_provision_token']

      # Create object from extracted values.
      StartMilePaymentResult.new(payment_provision_token)
    end
  end
end
