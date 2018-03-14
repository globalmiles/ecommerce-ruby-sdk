# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesECommerceApi
  # Representing a discount for shopping cart item.
  class CartItemDiscount < BaseModel
    # An identifier to reference this product.
    # @return [String]
    attr_accessor :id

    # Amount of the current discount.
    # @return [Float]
    attr_accessor :discount

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['discount'] = 'discount'
      @_hash
    end

    def initialize(id = nil,
                   discount = nil)
      @id = id
      @discount = discount
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash['id']
      discount = hash['discount']

      # Create object from extracted values.
      CartItemDiscount.new(id,
                           discount)
    end
  end
end
