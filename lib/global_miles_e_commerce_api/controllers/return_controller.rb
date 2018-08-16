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

    # This endpoint allows to get a return.
    # You can try this API with configuring client parameters in Console Tab
    # below. Test OAuthClientId is
    # b30359c21700fd6f2b91154adcb7b37bab3e7e0a33e22682e5dd149d7a6ac4df and
    # OAuthClientSecret is
    # 4bc4335faad41d6a23cd059e495005f00496a64e34e6187b1d72695a8debd28c
    # @param [String] return_provision_token Required parameter: The token value
    # of a return.
    # @return RetrieveReturnResponse response from the API call
    def retrieve_return(return_provision_token)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/v1/ecommerce/returns/{return_provision_token}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'return_provision_token' => return_provision_token
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
      )
      OAuth2.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      RetrieveReturnResponse.from_hash(decoded)
    end

    # This endpoint allows to cancel a return.
    # You can try this API with configuring client parameters in Console Tab
    # below. Test OAuthClientId is
    # b30359c21700fd6f2b91154adcb7b37bab3e7e0a33e22682e5dd149d7a6ac4df and
    # OAuthClientSecret is
    # 4bc4335faad41d6a23cd059e495005f00496a64e34e6187b1d72695a8debd28c
    # @param [CancelReturnRequest] body Required parameter: The body of the
    # request.
    # @return Response response from the API call
    def delete_cancel_return(body)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/v2/ecommerce/returns'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
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

    # This endpoint allows to complete a return.
    # You can try this API with configuring client parameters in Console Tab
    # below. Test OAuthClientId is
    # b30359c21700fd6f2b91154adcb7b37bab3e7e0a33e22682e5dd149d7a6ac4df and
    # OAuthClientSecret is
    # 4bc4335faad41d6a23cd059e495005f00496a64e34e6187b1d72695a8debd28c
    # @param [CompleteReturnRequest] body Required parameter: The body of the
    # request.
    # @return Response response from the API call
    def update_complete_return(body)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/v2/ecommerce/returns'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
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

    # This endpoint allows to start a return for a specific order.
    # You can try this API with configuring client parameters in Console Tab
    # below. Test OAuthClientId is
    # b30359c21700fd6f2b91154adcb7b37bab3e7e0a33e22682e5dd149d7a6ac4df and
    # OAuthClientSecret is
    # 4bc4335faad41d6a23cd059e495005f00496a64e34e6187b1d72695a8debd28c
    # @param [StartReturnRequest] body Required parameter: The body of the
    # request.
    # @return StartReturnResponse response from the API call
    def create_start_return(body)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/v2/ecommerce/returns'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
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

    # This endpoint allows to get list of returns. In order to get detailed
    # return history and reconciliation you can use this endpoint.
    # You can try this API with configuring client parameters in Console Tab
    # below. Test OAuthClientId is
    # b30359c21700fd6f2b91154adcb7b37bab3e7e0a33e22682e5dd149d7a6ac4df and
    # OAuthClientSecret is
    # 4bc4335faad41d6a23cd059e495005f00496a64e34e6187b1d72695a8debd28c
    # @param [String] filter_store_code Required parameter: Filter for an online
    # store.
    # @param [String] filter_created_at Required parameter: Filter for
    # created_at field. It is accepted a valid date range value. The format is
    # YYYY-MM-DD..YYYY-MM-DD.
    # @param [String] filter_status Optional parameter: Filter for status field.
    # It is accepted a valid status value of return.
    # @param [String] sort Optional parameter: Sort for some selected fields. In
    # order to sort descending "-" value will be used before the field. Valid
    # field values are "created_at",  "updated_at", "status".
    # @return ListReturnResponse response from the API call
    def list_returns(filter_store_code,
                     filter_created_at,
                     filter_status = nil,
                     sort = nil)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/v2/ecommerce/returns'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'filter[store_code]' => filter_store_code,
          'filter[created_at]' => filter_created_at,
          'filter[status]' => filter_status,
          'sort' => sort
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
      )
      OAuth2.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ListReturnResponse.from_hash(decoded)
    end
  end
end
