# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesEcommerceApi
  # Representing an order.
  class Order < BaseModel
    # Total value of all order items without tax.
    # @return [Float]
    attr_accessor :subtotal

    # The amount of tax.
    # @return [Float]
    attr_accessor :tax

    # Total amount of order.
    # @return [Float]
    attr_accessor :total

    # ISO-4217 3-letter currency code.
    # @return [String]
    attr_accessor :currency

    # An array of order items.
    # @return [List of OrderItem]
    attr_accessor :items

    # An array of discount items.
    # @return [List of DiscountItem]
    attr_accessor :discounts

    # An array of payment items.
    # @return [List of PaymentItem]
    attr_accessor :payments

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['subtotal'] = 'subtotal'
      @_hash['tax'] = 'tax'
      @_hash['total'] = 'total'
      @_hash['currency'] = 'currency'
      @_hash['items'] = 'items'
      @_hash['discounts'] = 'discounts'
      @_hash['payments'] = 'payments'
      @_hash
    end

    def initialize(subtotal = nil,
                   tax = nil,
                   total = nil,
                   currency = nil,
                   items = nil,
                   discounts = nil,
                   payments = nil)
      @subtotal = subtotal
      @tax = tax
      @total = total
      @currency = currency
      @items = items
      @discounts = discounts
      @payments = payments
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
          items << (OrderItem.from_hash(structure) if structure)
        end
      end
      # Parameter is an array, so we need to iterate through it
      discounts = nil
      unless hash['discounts'].nil?
        discounts = []
        hash['discounts'].each do |structure|
          discounts << (DiscountItem.from_hash(structure) if structure)
        end
      end
      # Parameter is an array, so we need to iterate through it
      payments = nil
      unless hash['payments'].nil?
        payments = []
        hash['payments'].each do |structure|
          payments << (PaymentItem.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      Order.new(subtotal,
                tax,
                total,
                currency,
                items,
                discounts,
                payments)
    end
  end
end
