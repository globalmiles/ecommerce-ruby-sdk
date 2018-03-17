# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesEcommerceApi
  # A basic object of the response.
  class Response < BaseModel
    # The status of the response. The value is always "ok" for successful
    # responses otherwise it includes error code.
    # @return [String]
    attr_accessor :status

    # The message of the error. It is always null for successful responses.
    # @return [String]
    attr_accessor :message

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['status'] = 'status'
      @_hash['message'] = 'message'
      @_hash
    end

    def initialize(status = nil,
                   message = nil)
      @status = status
      @message = message
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      status = hash['status']
      message = hash['message']

      # Create object from extracted values.
      Response.new(status,
                   message)
    end
  end
end
