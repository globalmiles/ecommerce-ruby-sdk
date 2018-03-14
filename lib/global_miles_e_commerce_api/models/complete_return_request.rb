# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesECommerceApi
  # Request of return for complete action.
  class CompleteReturnRequest < BaseModel
    # An identifier for online store.
    # @return [String]
    attr_accessor :store_code

    # A token represents a return object for provisioning.
    # @return [String]
    attr_accessor :return_provision_token

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['store_code'] = 'store_code'
      @_hash['return_provision_token'] = 'return_provision_token'
      @_hash
    end

    def initialize(store_code = nil,
                   return_provision_token = nil)
      @store_code = store_code
      @return_provision_token = return_provision_token
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      store_code = hash['store_code']
      return_provision_token = hash['return_provision_token']

      # Create object from extracted values.
      CompleteReturnRequest.new(store_code,
                                return_provision_token)
    end
  end
end
