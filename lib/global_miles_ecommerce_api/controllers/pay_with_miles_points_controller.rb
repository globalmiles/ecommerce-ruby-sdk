# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesEcommerceApi
  # PayWithMilesPointsController
  class PayWithMilesPointsController < BaseController
    @instance = PayWithMilesPointsController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # This endpoint allows to get list of payments. In order to get detailed
    # payment history and reconciliation you can use this API.
    # @param [String] accept Required parameter: It advertises which content
    # type is able to understand.
    # @param [String] content_type Required parameter: It tells the client what
    # the content type of the returned.
    # @param [String] authorization Required parameter: It includes OAuth2
    # token.
    # @param [String] store_code Required parameter: An identifier for online
    # store.
    # @param [String] filter_by_created_at Required parameter: Filter for
    # created_at field. It is accepted a valid date range value. The format is
    # YYYY-MM-DD...YYYY-MM-DD.
    # @param [String] filter_by_status Optional parameter: Filter for status
    # field. It is accepted a valid status value of payment.
    # @param [String] sort_by Optional parameter: Sort for some selected fields.
    # In order to sort descending "-" value will be used before the field. Valid
    # field values are "created_at",  "updated_at", "status".
    # @return ListPointPaymentResponse response from the API call
    def list_point_payments(accept,
                            content_type,
                            authorization,
                            store_code,
                            filter_by_created_at,
                            filter_by_status = nil,
                            sort_by = nil)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/v2/ecommerce/payments'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'StoreCode' => store_code,
          'FilterByCreatedAt' => filter_by_created_at,
          'FilterByStatus' => filter_by_status,
          'SortBy' => sort_by
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'Accept' => accept,
        'Content-Type' => content_type,
        'Authorization' => authorization
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
      ListPointPaymentResponse.from_hash(decoded)
    end

    # This endpoint allows to refund a payment.
    # @param [String] accept Required parameter: It advertises which content
    # type is able to understand.
    # @param [String] content_type Required parameter: It tells the client what
    # the content type of the returned.
    # @param [String] authorization Required parameter: It includes OAuth2
    # token.
    # @param [RefundPointPaymentRequest] body Required parameter: The body of
    # the request.
    # @return Response response from the API call
    def create_refund_point_payment(accept,
                                    content_type,
                                    authorization,
                                    body)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/v2/ecommerce/payments/actions/refund'
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
      Response.from_hash(decoded)
    end

    # This endpoint allows to cancel a payment.
    # @param [String] accept Required parameter: It advertises which content
    # type is able to understand.
    # @param [String] content_type Required parameter: It tells the client what
    # the content type of the returned.
    # @param [String] authorization Required parameter: It includes OAuth2
    # token.
    # @param [CancelPointPaymentRequest] body Required parameter: The body of
    # the request.
    # @return Response response from the API call
    def delete_cancel_point_payment(accept,
                                    content_type,
                                    authorization,
                                    body)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/v2/ecommerce/payments'
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

    # This endpoint allows to complete a payment.
    # @param [String] accept Required parameter: It advertises which content
    # type is able to understand.
    # @param [String] content_type Required parameter: It tells the client what
    # the content type of the returned.
    # @param [String] authorization Required parameter: It includes OAuth2
    # token.
    # @param [CompletePointPaymentRequest] body Required parameter: The body of
    # the request.
    # @return Response response from the API call
    def update_complete_point_payment(accept,
                                      content_type,
                                      authorization,
                                      body)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/v2/ecommerce/payments'
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

    # After successful authentication and retrieving needed token,this endpoint
    # allows to start a payment transaction. To be able to complete whole sale
    # process successfully  also check "Complete Point Payment endpoint" please.
    # @param [String] accept Required parameter: It advertises which content
    # type is able to understand.
    # @param [String] content_type Required parameter: It tells the client what
    # the content type of the returned.
    # @param [String] authorization Required parameter: It includes OAuth2
    # token.
    # @param [StartPointPaymentRequest] body Required parameter: The body of the
    # request.
    # @return StartPointPaymentResponse response from the API call
    def create_start_point_payment(accept,
                                   content_type,
                                   authorization,
                                   body)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/v2/ecommerce/payments'
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
      StartPointPaymentResponse.from_hash(decoded)
    end
  end
end
