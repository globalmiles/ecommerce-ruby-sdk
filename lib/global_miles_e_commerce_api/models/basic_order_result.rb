# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesECommerceApi
  # Representing an order in list result.
  class BasicOrderResult < BaseModel
    # A token represents an order object from Global Miles system.
    # @return [String]
    attr_accessor :transaction_token

    # The ID of the transaction that represents the order.
    # @return [String]
    attr_accessor :transaction_id

    # The date and time when the order was completed in partner side.
    # @return [String]
    attr_accessor :completed_at

    # Create date time of order. The format is ISO 8601 date and time.
    # @return [String]
    attr_accessor :created_at

    # Last update date time of order. The format is ISO 8601 date and time.
    # @return [String]
    attr_accessor :updated_at

    # The status of order.
    # @return [OrderStatusEnum]
    attr_accessor :status

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

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['transaction_token'] = 'transaction_token'
      @_hash['transaction_id'] = 'transaction_id'
      @_hash['completed_at'] = 'completed_at'
      @_hash['created_at'] = 'created_at'
      @_hash['updated_at'] = 'updated_at'
      @_hash['status'] = 'status'
      @_hash['subtotal'] = 'subtotal'
      @_hash['tax'] = 'tax'
      @_hash['total'] = 'total'
      @_hash['currency'] = 'currency'
      @_hash
    end

    def initialize(transaction_token = nil,
                   transaction_id = nil,
                   completed_at = nil,
                   created_at = nil,
                   updated_at = nil,
                   status = nil,
                   subtotal = nil,
                   tax = nil,
                   total = nil,
                   currency = nil)
      @transaction_token = transaction_token
      @transaction_id = transaction_id
      @completed_at = completed_at
      @created_at = created_at
      @updated_at = updated_at
      @status = status
      @subtotal = subtotal
      @tax = tax
      @total = total
      @currency = currency
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      transaction_token = hash['transaction_token']
      transaction_id = hash['transaction_id']
      completed_at = hash['completed_at']
      created_at = hash['created_at']
      updated_at = hash['updated_at']
      status = hash['status']
      subtotal = hash['subtotal']
      tax = hash['tax']
      total = hash['total']
      currency = hash['currency']

      # Create object from extracted values.
      BasicOrderResult.new(transaction_token,
                           transaction_id,
                           completed_at,
                           created_at,
                           updated_at,
                           status,
                           subtotal,
                           tax,
                           total,
                           currency)
    end
  end
end
