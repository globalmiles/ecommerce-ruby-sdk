# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesEcommerceApi
  # All configuration including auth info and base URI for the API access
  # are configured in this class.
  class Configuration
    # Set the array parameter serialization method.
    # (allowed: indexed, unindexed, plain, csv, tsv, psv)
    @array_serialization = 'indexed'

    # An enum for SDK environments.
    class Environment
      #CLOUD: Cloud Environment
      ENVIRONMENT = [CLOUD = 0].freeze
    end

    # An enum for API servers.
    class Server
      SERVER = [DEFAULT = 0].freeze
    end

    # The environment in which the SDK is running.
    @environment = Environment::CLOUD

    # OAuth 2 Client ID
    @o_auth_client_id = 'TODO: Replace'

    # OAuth 2 Client Secret
    @o_auth_client_secret = 'TODO: Replace'

    # Object for storing information about the OAuth token
    @o_auth_token = nil

    # Callback (Proc) to be called when OAuth token is acquired or refreshed
    @o_auth_callback = nil

    # All the environments the SDK can run in.
    @environments = {
      Environment::CLOUD => {
        Server::DEFAULT => 'https://test1.api.globalmiles.com'
      }
    }

    # Generates the appropriate base URI for the environment and the server.
    # @param [Configuration::Server] The server enum for which the base URI is
    # required.
    # @return [String] The base URI.
    def self.get_base_uri(server = Server::DEFAULT)
      environments[environment][server].clone
    end

    # The attribute accessors for public properties.
    class << self
      attr_accessor :array_serialization
      attr_accessor :environment
      attr_accessor :environments
      attr_accessor :o_auth_client_id
      attr_accessor :o_auth_client_secret
      attr_accessor :o_auth_token
      attr_accessor :o_auth_callback
    end
  end
end
