# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesECommerceApi
  # Representing a shopping cart.
  class Cart < BaseModel
    # Total value of all cart items without tax.
    # @return [Float]
    attr_accessor :subtotal

    # The amount of tax.
    # @return [Float]
    attr_accessor :tax

    # Total amount of cart.
    # @return [Float]
    attr_accessor :total

    # ISO-4217 3-letter currency code.
    # @return [String]
    attr_accessor :currency

    # An array of cart items.
    # @return [List of CartItem]
    attr_accessor :items

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['subtotal'] = 'subtotal'
      @_hash['tax'] = 'tax'
      @_hash['total'] = 'total'
      @_hash['currency'] = 'currency'
      @_hash['items'] = 'items'
      @_hash
    end

    def initialize(subtotal = nil,
                   tax = nil,
                   total = nil,
                   currency = nil,
                   items = nil)
      @subtotal = subtotal
      @tax = tax
      @total = total
      @currency = currency
      @items = items
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      subtotal = hash['subtotal']
      tax = hash['tax']
      total = hash['total']
      currency = hash['currency']
      # Parameter is an array, so we need to iterate through it
      items = nil
      unless hash['items'].nil?
        items = []
        hash['items'].each do |structure|
          items << (CartItem.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      Cart.new(subtotal,
               tax,
               total,
               currency,
               items)
    end
  end
end
