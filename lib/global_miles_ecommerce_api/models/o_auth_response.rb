# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesEcommerceApi
  # Representing an OAuth response.
  class OAuthResponse < BaseModel
    # An access token from the authorization server.
    # @return [String]
    attr_accessor :access_token

    # The type of token this is, typically just the string "bearer".
    # @return [String]
    attr_accessor :token_type

    # The time in unix time format when the access token was created.
    # @return [String]
    attr_accessor :created_at

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['access_token'] = 'access_token'
      @_hash['token_type'] = 'token_type'
      @_hash['created_at'] = 'created_at'
      @_hash
    end

    def initialize(access_token = nil,
                   token_type = nil,
                   created_at = nil)
      @access_token = access_token
      @token_type = token_type
      @created_at = created_at
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      access_token = hash['access_token']
      token_type = hash['token_type']
      created_at = hash['created_at']

      # Create object from extracted values.
      OAuthResponse.new(access_token,
                        token_type,
                        created_at)
    end
  end
end
