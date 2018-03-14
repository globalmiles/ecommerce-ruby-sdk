# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

require_relative 'response'

module GlobalMilesECommerceApi
  # Response object of return for start action.
  class StartReturnResponse < Response
    # Result object of the response.
    # @return [StartReturnResult]
    attr_accessor :result

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['result'] = 'result'
      @_hash = super().merge(@_hash)
      @_hash
    end

    def initialize(result = nil,
                   status = nil,
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
      result = StartReturnResult.from_hash(hash['result']) if hash['result']
      status = hash['status']
      message = hash['message']

      # Create object from extracted values.
      StartReturnResponse.new(result,
                              status,
                              message)
    end
  end
end
