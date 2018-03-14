# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesECommerceApi
  # Representing a discount for shopping cart.
  class CartDiscount < BaseModel
    # ISO-4217 3-letter currency code.
    # @return [String]
    attr_accessor :currency

    # Amount of the current discount.
    # @return [Float]
    attr_accessor :discount

    # A token represents a discount object for provisioning.
    # @return [String]
    attr_accessor :discount_provision_token

    # An array of discounts for cart items.
    # @return [List of CartItemDiscount]
    attr_accessor :items

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['currency'] = 'currency'
      @_hash['discount'] = 'discount'
      @_hash['discount_provision_token'] = 'discount_provision_token'
      @_hash['items'] = 'items'
      @_hash
    end

    def initialize(currency = nil,
                   discount = nil,
                   discount_provision_token = nil,
                   items = nil)
      @currency = currency
      @discount = discount
      @discount_provision_token = discount_provision_token
      @items = items
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      currency = hash['currency']
      discount = hash['discount']
      discount_provision_token = hash['discount_provision_token']
      # Parameter is an array, so we need to iterate through it
      items = nil
      unless hash['items'].nil?
        items = []
        hash['items'].each do |structure|
          items << (CartItemDiscount.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      CartDiscount.new(currency,
                       discount,
                       discount_provision_token,
                       items)
    end
  end
end
