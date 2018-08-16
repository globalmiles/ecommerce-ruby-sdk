# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesECommerceApi
  # AuthenticationController
  class AuthenticationController < BaseController
    @instance = AuthenticationController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # An access token will allow you to make requests for the system. We support
    # only one type of token: client_credentials.
    # You can try this API with configuring client parameters in Console Tab
    # below. Test OAuthClientId is
    # b30359c21700fd6f2b91154adcb7b37bab3e7e0a33e22682e5dd149d7a6ac4df and
    # OAuthClientSecret is
    # 4bc4335faad41d6a23cd059e495005f00496a64e34e6187b1d72695a8debd28c
    # @param [String] accept Required parameter: It advertises which content
    # type is able to understand.
    # @param [String] content_type Required parameter: It tells the client what
    # the content type of the returned.
    # @param [OAuthRequest] body Required parameter: The body of the request.
    # @return OAuthResponse response from the API call
    def create_authentication(accept,
                              content_type,
                              body)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/oauth/token'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'Accept' => accept,
        'Content-Type' => content_type
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: body.to_json
      )
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      OAuthResponse.from_hash(decoded)
    end
  end
end
