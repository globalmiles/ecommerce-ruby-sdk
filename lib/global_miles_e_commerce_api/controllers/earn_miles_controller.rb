# global_miles_e_commerce_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesECommerceApi
  # EarnMilesController
  class EarnMilesController < BaseController
    @instance = EarnMilesController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # This endpoint allows to get list of orders. In order to get detailed order
    # history and reconciliation you can use this endpoint.
    # You can try this API with configuring client parameters in Console Tab
    # below. Test OAuthClientId is
    # b30359c21700fd6f2b91154adcb7b37bab3e7e0a33e22682e5dd149d7a6ac4df and
    # OAuthClientSecret is
    # 4bc4335faad41d6a23cd059e495005f00496a64e34e6187b1d72695a8debd28c
    # @param [String] filter_store_code Required parameter: Filter for an online
    # store.
    # @param [String] filter_completed_at Required parameter: Filter for
    # completed_at field. It is accepted a valid date range value. The format is
    # YYYY-MM-DD..YYYY-MM-DD.
    # @param [String] filter_status Optional parameter: Filter for status field.
    # It is accepted a valid status value of order.
    # @param [String] sort Optional parameter: Sort for some selected fields. In
    # order to sort descending "-" value will be used before the field. Valid
    # field values are "completed_at", "created_at",  "updated_at", "status".
    # @return ListOrderResponse response from the API call
    def list_orders(filter_store_code,
                    filter_completed_at,
                    filter_status = nil,
                    sort = nil)
      # Prepare query url.
      _path_url = '/v2/ecommerce/orders'
      _query_builder = Configuration.get_base_uri
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'filter[store_code]' => filter_store_code,
          'filter[completed_at]' => filter_completed_at,
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
      ListOrderResponse.from_hash(decoded)
    end

    # This endpoint allows to create an order for earn miles. It may also
    # include discounts and payments.
    # You can try this API with configuring client parameters in Console Tab
    # below. Test OAuthClientId is
    # b30359c21700fd6f2b91154adcb7b37bab3e7e0a33e22682e5dd149d7a6ac4df and
    # OAuthClientSecret is
    # 4bc4335faad41d6a23cd059e495005f00496a64e34e6187b1d72695a8debd28c
    # @param [OrderRequest] body Required parameter: The body of the request.
    # @return OrderResponse response from the API call
    def create_order(body)
      # Prepare query url.
      _path_url = '/v2/ecommerce/orders'
      _query_builder = Configuration.get_base_uri
      _query_builder << _path_url
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

    # This endpoint allows to get an order.
    # You can try this API with configuring client parameters in Console Tab
    # below. Test OAuthClientId is
    # b30359c21700fd6f2b91154adcb7b37bab3e7e0a33e22682e5dd149d7a6ac4df and
    # OAuthClientSecret is
    # 4bc4335faad41d6a23cd059e495005f00496a64e34e6187b1d72695a8debd28c
    # @param [String] transaction_id Required parameter: The ID of the
    # transaction that represents the order.
    # @return RetrieveOrderResponse response from the API call
    def retrieve_order(transaction_id)
      # Prepare query url.
      _path_url = '/v2/ecommerce/orders/{transaction_id}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'transaction_id' => transaction_id
      )
      _query_builder = Configuration.get_base_uri
      _query_builder << _path_url
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
      RetrieveOrderResponse.from_hash(decoded)
    end

    # This endpoint allows to get available amount of money, based on miles of
    # user and their discounts which is based on cart or items.
    # You can try this API with configuring client parameters in Console Tab
    # below. Test OAuthClientId is
    # b30359c21700fd6f2b91154adcb7b37bab3e7e0a33e22682e5dd149d7a6ac4df and
    # OAuthClientSecret is
    # 4bc4335faad41d6a23cd059e495005f00496a64e34e6187b1d72695a8debd28c
    # @param [CartRequest] body Required parameter: The body of the request.
    # @return CartResponse response from the API call
    def create_cart(body)
      # Prepare query url.
      _path_url = '/v2/ecommerce/carts'
      _query_builder = Configuration.get_base_uri
      _query_builder << _path_url
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
