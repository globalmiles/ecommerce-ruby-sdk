# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesECommerceApi
  # Request of order object.
  class OrderRequest < BaseModel
    # An identifier for online store.
    # @return [String]
    attr_accessor :store_code

    # A token that is representing a Global Miles user for the current session.
    # @return [String]
    attr_accessor :user_token

    # A complex object for order.
    # @return [Order]
    attr_accessor :order

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['store_code'] = 'store_code'
      @_hash['user_token'] = 'user_token'
      @_hash['order'] = 'order'
      @_hash
    end

    def initialize(store_code = nil,
                   user_token = nil,
                   order = nil)
      @store_code = store_code
      @user_token = user_token
      @order = order
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      store_code = hash['store_code']
      user_token = hash['user_token']
      order = Order.from_hash(hash['order']) if hash['order']

      # Create object from extracted values.
      OrderRequest.new(store_code,
                       user_token,
                       order)
    end
  end
end
