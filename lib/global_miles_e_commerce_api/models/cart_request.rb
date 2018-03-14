# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesECommerceApi
  # Request of the card object.
  class CartRequest < BaseModel
    # A token that is representing a Global Miles user for the current session.
    # @return [String]
    attr_accessor :user_token

    # An identifier for online store.
    # @return [String]
    attr_accessor :store_code

    # A complex object for cart.
    # @return [Cart]
    attr_accessor :cart

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['user_token'] = 'user_token'
      @_hash['store_code'] = 'store_code'
      @_hash['cart'] = 'cart'
      @_hash
    end

    def initialize(user_token = nil,
                   store_code = nil,
                   cart = nil)
      @user_token = user_token
      @store_code = store_code
      @cart = cart
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      user_token = hash['user_token']
      store_code = hash['store_code']
      cart = Cart.from_hash(hash['cart']) if hash['cart']

      # Create object from extracted values.
      CartRequest.new(user_token,
                      store_code,
                      cart)
    end
  end
end
