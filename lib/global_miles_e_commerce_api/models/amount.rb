# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesECommerceApi
  # A complex object for amount.
  class Amount < BaseModel
    # A decimal value with two decimals in the string representation of amount.
    # @return [Float]
    attr_accessor :value

    # ISO 4217 currency code of the amount.
    # @return [String]
    attr_accessor :currency

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['value'] = 'value'
      @_hash['currency'] = 'currency'
      @_hash
    end

    def initialize(value = nil,
                   currency = nil)
      @value = value
      @currency = currency
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      value = hash['value']
      currency = hash['currency']

      # Create object from extracted values.
      Amount.new(value,
                 currency)
    end
  end
end
