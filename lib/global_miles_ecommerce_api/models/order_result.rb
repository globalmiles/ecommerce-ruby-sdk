# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesEcommerceApi
  # Result object of the response.
  class OrderResult < BaseModel
    # A token represents an order object from Global Miles system.
    # @return [String]
    attr_accessor :transaction_token

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['transaction_token'] = 'transaction_token'
      @_hash
    end

    def initialize(transaction_token = nil)
      @transaction_token = transaction_token
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      transaction_token = hash['transaction_token']

      # Create object from extracted values.
      OrderResult.new(transaction_token)
    end
  end
end
