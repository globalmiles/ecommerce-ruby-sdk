# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesECommerceApi
  # ReturnController
  class ReturnController < BaseController
    @instance = ReturnController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # This endpoint allows to start a return for a specific order.
    # @param [String] accept Required parameter: It advertises which content
    # type is able to understand.
    # @param [String] content_type Required parameter: It tells the client what
    # the content type of the returned.
    # @param [String] authorization Required parameter: It includes OAuth2
    # token.
    # @param [StartReturnRequest] body Required parameter: The body of the
    # request.
    # @return StartReturnResponse response from the API call
    def create_start_return(accept,
                            content_type,
                            authorization,
                            body)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/v2/ecommerce/returns'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'Accept' => accept,
        'Content-Type' => content_type,
        'Authorization' => authorization
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: body.to_json
      )
      OAuth2.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      StartReturnResponse.from_hash(decoded)
    end

    # This endpoint allows to complete a return.
    # @param [String] accept Required parameter: It advertises which content
    # type is able to understand.
    # @param [String] content_type Required parameter: It tells the client what
    # the content type of the returned.
    # @param [String] authorization Required parameter: It includes OAuth2
    # token.
    # @param [CompleteReturnRequest] body Required parameter: The body of the
    # request.
    # @return Response response from the API call
    def update_complete_return(accept,
                               content_type,
                               authorization,
                               body)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/v2/ecommerce/returns'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'Accept' => accept,
        'Content-Type' => content_type,
        'Authorization' => authorization
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.put(
        _query_url,
        headers: _headers,
        parameters: body.to_json
      )
      OAuth2.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      Response.from_hash(decoded)
    end

    # This endpoint allows to cancel a return.
    # @param [String] accept Required parameter: It advertises which content
    # type is able to understand.
    # @param [String] content_type Required parameter: It tells the client what
    # the content type of the returned.
    # @param [String] authorization Required parameter: It includes OAuth2
    # token.
    # @param [CancelReturnRequest] body Required parameter: The body of the
    # request.
    # @return Response response from the API call
    def delete_cancel_return(accept,
                             content_type,
                             authorization,
                             body)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/v2/ecommerce/returns'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'Accept' => accept,
        'Content-Type' => content_type,
        'Authorization' => authorization
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.delete(
        _query_url,
        headers: _headers,
        parameters: body.to_json
      )
      OAuth2.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      Response.from_hash(decoded)
    end
  end
end
