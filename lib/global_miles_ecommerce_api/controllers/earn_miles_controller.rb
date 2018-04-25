# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesEcommerceApi
  # EarnMilesController
  class EarnMilesController < BaseController
    @instance = EarnMilesController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # This endpoint allows to create an order for earn miles. It may also
    # include discounts and payments.
    # @param [OrderRequest] body Required parameter: The body of the request.
    # @return OrderResponse response from the API call
    def create_order_info(body)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/v2/ecommerce/orders'
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
      OrderResponse.from_hash(decoded)
    end

    # This endpoint allows to get available amount of money, based on miles of
    # user and their discounts which is based on cart or items.
    # @param [CartRequest] body Required parameter: The body of the request.
    # @return CartResponse response from the API call
    def create_cart_info(body)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/v2/ecommerce/carts'
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
      CartResponse.from_hash(decoded)
    end
  end
end
