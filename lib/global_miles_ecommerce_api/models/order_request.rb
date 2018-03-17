# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesEcommerceApi
  # Request of order object.
  class OrderRequest < BaseModel
    # An identifier for online store.
    # @return [String]
    attr_accessor :store_code

    # A token that is representing a Global Miles user for the current session.
    # @return [String]
    attr_accessor :user_token

    # The ID of the transaction that represents the order.
    # @return [String]
    attr_accessor :transaction_id

    # A complex object for order.
    # @return [Order]
    attr_accessor :order

    # It specifies how many days later the miles / points should be given to the
    # user.
    # @return [Integer]
    attr_accessor :shift_allowance

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['store_code'] = 'store_code'
      @_hash['user_token'] = 'user_token'
      @_hash['transaction_id'] = 'transaction_id'
      @_hash['order'] = 'order'
      @_hash['shift_allowance'] = 'shift_allowance'
      @_hash
    end

    def initialize(store_code = nil,
                   user_token = nil,
                   transaction_id = nil,
                   order = nil,
                   shift_allowance = 0)
      @store_code = store_code
      @user_token = user_token
      @transaction_id = transaction_id
      @order = order
      @shift_allowance = shift_allowance
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      store_code = hash['store_code']
      user_token = hash['user_token']
      transaction_id = hash['transaction_id']
      order = Order.from_hash(hash['order']) if hash['order']
      shift_allowance = hash['shift_allowance'] ||= 0

      # Create object from extracted values.
      OrderRequest.new(store_code,
                       user_token,
                       transaction_id,
                       order,
                       shift_allowance)
    end
  end
end
