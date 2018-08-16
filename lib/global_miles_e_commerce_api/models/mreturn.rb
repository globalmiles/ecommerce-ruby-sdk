# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesECommerceApi
  # Representing a return.
  class Return < BaseModel
    # The token value of a return.
    # @return [String]
    attr_accessor :return_provision_token

    # The ID of the transaction that represents the order.
    # @return [String]
    attr_accessor :transaction_id

    # Create date time of return. The format is ISO 8601 date and time.
    # @return [String]
    attr_accessor :created_at

    # Last update date time of return. The format is ISO 8601 date and time.
    # @return [String]
    attr_accessor :updated_at

    # The status of return.
    # @return [ReturnStatusEnum]
    attr_accessor :status

    # An amount of return.
    # @return [Amount]
    attr_accessor :amount

    # A residual amount of return.
    # @return [Amount]
    attr_accessor :residual

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['return_provision_token'] = 'return_provision_token'
      @_hash['transaction_id'] = 'transaction_id'
      @_hash['created_at'] = 'created_at'
      @_hash['updated_at'] = 'updated_at'
      @_hash['status'] = 'status'
      @_hash['amount'] = 'amount'
      @_hash['residual'] = 'residual'
      @_hash
    end

    def initialize(return_provision_token = nil,
                   transaction_id = nil,
                   created_at = nil,
                   updated_at = nil,
                   status = nil,
                   amount = nil,
                   residual = nil)
      @return_provision_token = return_provision_token
      @transaction_id = transaction_id
      @created_at = created_at
      @updated_at = updated_at
      @status = status
      @amount = amount
      @residual = residual
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      return_provision_token = hash['return_provision_token']
      transaction_id = hash['transaction_id']
      created_at = hash['created_at']
      updated_at = hash['updated_at']
      status = hash['status']
      amount = Amount.from_hash(hash['amount']) if hash['amount']
      residual = Amount.from_hash(hash['residual']) if hash['residual']

      # Create object from extracted values.
      Return.new(return_provision_token,
                 transaction_id,
                 created_at,
                 updated_at,
                 status,
                 amount,
                 residual)
    end
  end
end