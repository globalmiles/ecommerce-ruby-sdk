# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesEcommerceApi
  # Request of return for start action.
  class StartReturnRequest < BaseModel
    # An identifier for online store.
    # @return [String]
    attr_accessor :store_code

    # The ID of the transaction that represents the order.
    # @return [String]
    attr_accessor :transaction_id

    # An amount of the return.
    # @return [Amount]
    attr_accessor :amount

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['store_code'] = 'store_code'
      @_hash['transaction_id'] = 'transaction_id'
      @_hash['amount'] = 'amount'
      @_hash
    end

    def initialize(store_code = nil,
                   transaction_id = nil,
                   amount = nil)
      @store_code = store_code
      @transaction_id = transaction_id
      @amount = amount
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      store_code = hash['store_code']
      transaction_id = hash['transaction_id']
      amount = Amount.from_hash(hash['amount']) if hash['amount']

      # Create object from extracted values.
      StartReturnRequest.new(store_code,
                             transaction_id,
                             amount)
    end
  end
end