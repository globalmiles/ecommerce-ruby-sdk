# global_miles_e_commerce_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesECommerceApi
  # Request of payment for complete action.
  class CompleteMilePaymentRequest < BaseModel
    # An identifier for online store.
    # @return [String]
    attr_accessor :store_code

    # A token represents a payment object for provisioning.
    # @return [String]
    attr_accessor :payment_provision_token

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['store_code'] = 'store_code'
      @_hash['payment_provision_token'] = 'payment_provision_token'
      @_hash
    end

    def initialize(store_code = nil,
                   payment_provision_token = nil)
      @store_code = store_code
      @payment_provision_token = payment_provision_token
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      store_code = hash['store_code']
      payment_provision_token = hash['payment_provision_token']

      # Create object from extracted values.
      CompleteMilePaymentRequest.new(store_code,
                                     payment_provision_token)
    end
  end
end
