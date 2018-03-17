# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).
require 'date'
require 'json'
require 'faraday'
require 'certifi'
require 'logging'

require_relative 'global_miles_ecommerce_api/api_helper.rb'
require_relative 'global_miles_ecommerce_api' \
                 '/global_miles_ecommerce_api_client.rb'

# Http
require_relative 'global_miles_ecommerce_api/http/http_call_back.rb'
require_relative 'global_miles_ecommerce_api/http/http_client.rb'
require_relative 'global_miles_ecommerce_api/http/http_method_enum.rb'
require_relative 'global_miles_ecommerce_api/http/http_request.rb'
require_relative 'global_miles_ecommerce_api/http/http_response.rb'
require_relative 'global_miles_ecommerce_api/http/http_context.rb'
require_relative 'global_miles_ecommerce_api/http/faraday_client.rb'
require_relative 'global_miles_ecommerce_api/http/auth/o_auth_2.rb'

# Models
require_relative 'global_miles_ecommerce_api/models/base_model.rb'
require_relative 'global_miles_ecommerce_api/models/complete_return_request.rb'
require_relative 'global_miles_ecommerce_api/models/start_return_response.rb'
require_relative 'global_miles_ecommerce_api/models/start_return_request.rb'
require_relative 'global_miles_ecommerce_api/models/start_return_result.rb'
require_relative 'global_miles_ecommerce_api/models/cart_response.rb'
require_relative 'global_miles_ecommerce_api/models' \
                 '/list_point_payment_response.rb'
require_relative 'global_miles_ecommerce_api/models/order_result.rb'
require_relative 'global_miles_ecommerce_api/models/order_response.rb'
require_relative 'global_miles_ecommerce_api/models/order_item.rb'
require_relative 'global_miles_ecommerce_api/models/payment_item.rb'
require_relative 'global_miles_ecommerce_api/models/o_auth_response.rb'
require_relative 'global_miles_ecommerce_api/models/o_auth_request.rb'
require_relative 'global_miles_ecommerce_api/models/order.rb'
require_relative 'global_miles_ecommerce_api/models/cart_result.rb'
require_relative 'global_miles_ecommerce_api/models/cart_item.rb'
require_relative 'global_miles_ecommerce_api/models/cart.rb'
require_relative 'global_miles_ecommerce_api/models/cart_item_discount.rb'
require_relative 'global_miles_ecommerce_api/models/discount_item.rb'
require_relative 'global_miles_ecommerce_api/models/order_request.rb'
require_relative 'global_miles_ecommerce_api/models/cart_request.rb'
require_relative 'global_miles_ecommerce_api/models/response.rb'
require_relative 'global_miles_ecommerce_api/models/amount.rb'
require_relative 'global_miles_ecommerce_api/models' \
                 '/start_point_payment_request.rb'
require_relative 'global_miles_ecommerce_api/models' \
                 '/start_point_payment_response.rb'
require_relative 'global_miles_ecommerce_api/models' \
                 '/start_point_payment_result.rb'
require_relative 'global_miles_ecommerce_api/models' \
                 '/complete_point_payment_request.rb'
require_relative 'global_miles_ecommerce_api/models' \
                 '/cancel_point_payment_request.rb'
require_relative 'global_miles_ecommerce_api/models' \
                 '/refund_point_payment_request.rb'
require_relative 'global_miles_ecommerce_api/models/payment.rb'
require_relative 'global_miles_ecommerce_api/models/cancel_return_request.rb'
require_relative 'global_miles_ecommerce_api/models/cart_discount.rb'
require_relative 'global_miles_ecommerce_api/models/o_auth_token.rb'
require_relative 'global_miles_ecommerce_api/models/discount_type_enum.rb'
require_relative 'global_miles_ecommerce_api/models/payment_type_enum.rb'
require_relative 'global_miles_ecommerce_api/models/payment_status_enum.rb'
require_relative 'global_miles_ecommerce_api/models' \
                 '/o_auth_provider_error_enum.rb'

# Exceptions
require_relative 'global_miles_ecommerce_api/exceptions/api_exception.rb'
require_relative 'global_miles_ecommerce_api/exceptions' \
                 '/o_auth_provider_exception.rb'

require_relative 'global_miles_ecommerce_api/configuration.rb'

# Controllers
require_relative 'global_miles_ecommerce_api/controllers/base_controller.rb'
require_relative 'global_miles_ecommerce_api/controllers' \
                 '/pay_with_miles_points_controller.rb'
require_relative 'global_miles_ecommerce_api/controllers' \
                 '/earn_miles_points_controller.rb'
require_relative 'global_miles_ecommerce_api/controllers' \
                 '/authentication_controller.rb'
require_relative 'global_miles_ecommerce_api/controllers/return_controller.rb'
require_relative 'global_miles_ecommerce_api/controllers' \
                 '/o_auth_authorization_controller.rb'
