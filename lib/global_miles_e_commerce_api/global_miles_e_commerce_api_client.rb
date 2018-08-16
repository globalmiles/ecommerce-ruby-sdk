# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesECommerceApi
  #  global_miles_e_commerce_api client class.
  class GlobalMilesECommerceApiClient
    # Singleton access to earn_miles controller.
    # @return [EarnMilesController] Returns the controller instance.
    def earn_miles
      EarnMilesController.instance
    end

    # Singleton access to authentication controller.
    # @return [AuthenticationController] Returns the controller instance.
    def authentication
      AuthenticationController.instance
    end

    # Singleton access to mreturn controller.
    # @return [ReturnController] Returns the controller instance.
    def mreturn
      ReturnController.instance
    end

    # Singleton access to pay_with_miles controller.
    # @return [PayWithMilesController] Returns the controller instance.
    def pay_with_miles
      PayWithMilesController.instance
    end

    # Singleton access to o_auth_authorization controller.
    # @return [OAuthAuthorizationController] Returns the controller instance.
    def o_auth_authorization
      OAuthAuthorizationController.instance
    end

    # Returns the configuration class for easy access.
    # @return [Configuration] Returns the actual configuration class.
    def config
      Configuration
    end

    # Returns the authentication class for easy access.
    # @return [OAuth2] Returns the actual OAuth2 class.
    def auth
      OAuth2
    end

    # Initializer with authentication and configuration parameters.
    def initialize(o_auth_client_id: nil, o_auth_client_secret: nil)
      Configuration.o_auth_client_id = o_auth_client_id if
        o_auth_client_id
      Configuration.o_auth_client_secret = o_auth_client_secret if
        o_auth_client_secret
    end
  end
end
