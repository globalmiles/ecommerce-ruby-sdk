# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesEcommerceApi
  # Result object of the response.
  class CartResult < BaseModel
    # The available amount of money for payment.
    # @return [Amount]
    attr_accessor :available_amount

    # A discount object for cart.
    # @return [CartDiscount]
    attr_accessor :cart_discount

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['available_amount'] = 'available_amount'
      @_hash['cart_discount'] = 'cart_discount'
      @_hash
    end

    def initialize(available_amount = nil,
                   cart_discount = nil)
      @available_amount = available_amount
      @cart_discount = cart_discount
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      available_amount = Amount.from_hash(hash['available_amount']) if
        hash['available_amount']
      cart_discount = CartDiscount.from_hash(hash['cart_discount']) if
        hash['cart_discount']

      # Create object from extracted values.
      CartResult.new(available_amount,
                     cart_discount)
    end
  end
end
