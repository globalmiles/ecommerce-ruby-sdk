# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

require_relative 'response'

module GlobalMilesECommerceApi
  # Response object of order for list action.
  class ListOrderResponse < Response
    # Result object of the response.
    # @return [List of BasicOrderResult]
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
      # Parameter is an array, so we need to iterate through it
      result = nil
      unless hash['result'].nil?
        result = []
        hash['result'].each do |structure|
          result << (BasicOrderResult.from_hash(structure) if structure)
        end
      end
      message = hash['message']

      # Create object from extracted values.
      ListOrderResponse.new(status,
                            result,
                            message)
    end
  end
end
