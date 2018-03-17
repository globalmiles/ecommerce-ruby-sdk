# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesEcommerceApi
  # Result object of return for start action.
  class StartReturnResult < BaseModel
    # A token represents a return object for provisioning.
    # @return [String]
    attr_accessor :return_provision_token

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['return_provision_token'] = 'return_provision_token'
      @_hash
    end

    def initialize(return_provision_token = nil)
      @return_provision_token = return_provision_token
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      return_provision_token = hash['return_provision_token']

      # Create object from extracted values.
      StartReturnResult.new(return_provision_token)
    end
  end
end