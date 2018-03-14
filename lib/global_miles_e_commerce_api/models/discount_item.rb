# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesECommerceApi
  # Representing a discount for order.
  class DiscountItem < BaseModel
    # Type of the discount.
    # @return [DiscountTypeEnum]
    attr_accessor :type

    # Amount of the current discount.
    # @return [Float]
    attr_accessor :amount

    # A token represents a discount object for provisioning.
    # @return [String]
    attr_accessor :discount_provision_token

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['type'] = 'type'
      @_hash['amount'] = 'amount'
      @_hash['discount_provision_token'] = 'discount_provision_token'
      @_hash
    end

    def initialize(type = nil,
                   amount = nil,
                   discount_provision_token = nil)
      @type = type
      @amount = amount
      @discount_provision_token = discount_provision_token
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      type = hash['type']
      amount = hash['amount']
      discount_provision_token = hash['discount_provision_token']

      # Create object from extracted values.
      DiscountItem.new(type,
                       amount,
                       discount_provision_token)
    end
  end
end
