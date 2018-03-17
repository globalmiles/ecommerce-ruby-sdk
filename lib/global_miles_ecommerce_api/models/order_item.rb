# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesEcommerceApi
  # Representing an order item.
  class OrderItem < BaseModel
    # An identifier to reference this product.
    # @return [String]
    attr_accessor :id

    # The quantity of the item.
    # @return [Float]
    attr_accessor :quantity

    # The price of the item.
    # @return [Float]
    attr_accessor :price

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['quantity'] = 'quantity'
      @_hash['price'] = 'price'
      @_hash
    end

    def initialize(id = nil,
                   quantity = nil,
                   price = nil)
      @id = id
      @quantity = quantity
      @price = price
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash['id']
      quantity = hash['quantity']
      price = hash['price']

      # Create object from extracted values.
      OrderItem.new(id,
                    quantity,
                    price)
    end
  end
end
