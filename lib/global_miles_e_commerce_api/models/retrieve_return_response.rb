# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

require_relative 'response'

module GlobalMilesECommerceApi
  # Response object of return for retrieve action.
  class RetrieveReturnResponse < Response
    # Result object of the response.
    # @return [Return]
    attr_accessor :result

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['result'] = 'result'
      @_hash = super().merge(@_hash)
      @_hash
    end

    def initialize(status = nil,
                   result = nil,
                   message = nil)
      @result = result

      # Call the constructor of the base class
      super(status,
            message)
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      status = hash['status']
      result = Return.from_hash(hash['result']) if hash['result']
      message = hash['message']

      # Create object from extracted values.
      RetrieveReturnResponse.new(status,
                                 result,
                                 message)
    end
  end
end