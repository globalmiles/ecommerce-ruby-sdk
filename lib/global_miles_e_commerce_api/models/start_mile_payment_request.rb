# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesECommerceApi
  # Request of payment for start action.
  class StartMilePaymentRequest < BaseModel
    # An identifier for online store.
    # @return [String]
    attr_accessor :store_code

    # A token that is representing a Global Miles user for the current session.
    # @return [String]
    attr_accessor :user_token

    # An amount of payment.
    # @return [Amount]
    attr_accessor :amount

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['store_code'] = 'store_code'
      @_hash['user_token'] = 'user_token'
      @_hash['amount'] = 'amount'
      @_hash
    end

    def initialize(store_code = nil,
                   user_token = nil,
                   amount = nil)
      @store_code = store_code
      @user_token = user_token
      @amount = amount
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      store_code = hash['store_code']
      user_token = hash['user_token']
      amount = Amount.from_hash(hash['amount']) if hash['amount']

      # Create object from extracted values.
      StartMilePaymentRequest.new(store_code,
                                  user_token,
                                  amount)
    end
  end
end