# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesEcommerceApi
  # Base controller.
  class BaseController
    attr_accessor :http_client, :http_call_back

    def initialize(http_client: nil, http_call_back: nil)
      @http_client = http_client || FaradayClient.new
      @http_call_back = http_call_back

      @global_headers = {
        'user-agent' => 'APIMATIC 2.0'
      }
    end

    def validate_parameters(args)
      args.each do |_name, value|
        if value.nil?
          raise ArgumentError, "Required parameter #{_name} cannot be nil."
        end
      end
    end

    def execute_request(request, binary: false)
      @http_call_back.on_before_request(request) if @http_call_back

      APIHelper.clean_hash(request.headers)
      request.headers = @global_headers.clone.merge(request.headers)

      response = if binary
                   @http_client.execute_as_binary(request)
                 else
                   @http_client.execute_as_string(request)
                 end
      context = HttpContext.new(request, response)

      @http_call_back.on_after_response(context) if @http_call_back

      context
    end

    def validate_response(context)
      raise APIException.new 'Bad Request	- The request was unacceptable, often due to missing a required parameter.', context if
      context.response.status_code == 400
      raise APIException.new 'Unauthorized - No valid API key provided.', context if
      context.response.status_code == 401
      raise APIException.new 'Request Failed - The parameters were valid but the request failed.', context if
      context.response.status_code == 402
      raise APIException.new 'Not Found - The requested resource doesn't exist.', context if
      context.response.status_code == 404
      raise APIException.new 'Too Many Requests - Too many requests hit the API too quickly.', context if
      context.response.status_code == 429
      raise APIException.new 'Server Error - Something went wrong.', context if
      context.response.status_code == 500
      raise APIException.new 'HTTP Response Not OK', context unless
        context.response.status_code.between?(200, 208) # [200,208] = HTTP OK
    end
  end
end
