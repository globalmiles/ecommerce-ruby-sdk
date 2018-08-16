# Getting started

API for E-commerce Partners. This document includes Cart, Discount, Payment, Order and Return related endpoints provided by Global Miles.

## How to Build

This client library is a Ruby gem which can be compiled and used in your Ruby and Ruby on Rails project. This library requires a few gems from the RubyGems repository.

1. Open the command line interface or the terminal and navigate to the folder containing the source code.
2. Run ``` gem build global_miles_e_commerce_api.gemspec ``` to build the gem.
3. Once built, the gem can be installed on the current work environment using ``` gem install global_miles_e_commerce_api-2.1.0.gem ```

![Building Gem](https://apidocs.io/illustration/ruby?step=buildSDK&workspaceFolder=Global%20Miles%20E-commerce%20API-Ruby&workspaceName=Global%20Miles%20E-commerce%20API-Ruby&projectName=global_miles_e_commerce_api&gemName=global_miles_e_commerce_api&gemVer=2.1.0)

## How to Use

The following section explains how to use the GlobalMilesECommerceApi Ruby Gem in a new Rails project using RubyMine&trade;. The basic workflow presented here is also applicable if you prefer using a different editor or IDE.

### 1. Starting a new project

Close any existing projects in RubyMine&trade; by selecting ``` File -> Close Project ```. Next, click on ``` Create New Project ``` to create a new project from scratch.

![Create a new project in RubyMine](https://apidocs.io/illustration/ruby?step=createNewProject0&workspaceFolder=Global%20Miles%20E-commerce%20API-Ruby&workspaceName=GlobalMilesECommerceApi&projectName=global_miles_e_commerce_api&gemName=global_miles_e_commerce_api&gemVer=2.1.0)

Next, provide ``` TestApp ``` as the project name, choose ``` Rails Application ``` as the project type, and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 1](https://apidocs.io/illustration/ruby?step=createNewProject1&workspaceFolder=Global%20Miles%20E-commerce%20API-Ruby&workspaceName=GlobalMilesECommerceApi&projectName=global_miles_e_commerce_api&gemName=global_miles_e_commerce_api&gemVer=2.1.0)

In the next dialog make sure that correct *Ruby SDK* is being used (minimum 2.0.0) and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 2](https://apidocs.io/illustration/ruby?step=createNewProject2&workspaceFolder=Global%20Miles%20E-commerce%20API-Ruby&workspaceName=GlobalMilesECommerceApi&projectName=global_miles_e_commerce_api&gemName=global_miles_e_commerce_api&gemVer=2.1.0)

This will create a new Rails Application project with an existing set of files and folder.

### 2. Add reference of the gem

In order to use the GlobalMilesECommerceApi gem in the new project we must add a gem reference. Locate the ```Gemfile``` in the *Project Explorer* window under the ``` TestApp ``` project node. The file contains references to all gems being used in the project. Here, add the reference to the library gem by adding the following line: ``` gem 'global_miles_e_commerce_api', '~> 2.1.0' ```

![Add references of the Gemfile](https://apidocs.io/illustration/ruby?step=addReference&workspaceFolder=Global%20Miles%20E-commerce%20API-Ruby&workspaceName=GlobalMilesECommerceApi&projectName=global_miles_e_commerce_api&gemName=global_miles_e_commerce_api&gemVer=2.1.0)

### 3. Adding a new Rails Controller

Once the ``` TestApp ``` project is created, a folder named ``` controllers ``` will be visible in the *Project Explorer* under the following path: ``` TestApp > app > controllers ```. Right click on this folder and select ``` New -> Run Rails Generator... ```.

![Run Rails Generator on Controllers Folder](https://apidocs.io/illustration/ruby?step=addCode0&workspaceFolder=Global%20Miles%20E-commerce%20API-Ruby&workspaceName=GlobalMilesECommerceApi&projectName=global_miles_e_commerce_api&gemName=global_miles_e_commerce_api&gemVer=2.1.0)

Selecting the said option will popup a small window where the generator names are displayed. Here, select the ``` controller ``` template.

![Create a new Controller](https://apidocs.io/illustration/ruby?step=addCode1&workspaceFolder=Global%20Miles%20E-commerce%20API-Ruby&workspaceName=GlobalMilesECommerceApi&projectName=global_miles_e_commerce_api&gemName=global_miles_e_commerce_api&gemVer=2.1.0)

Next, a popup window will ask you for a Controller name and included Actions. For controller name provide ``` Hello ``` and include an action named ``` Index ``` and click ``` OK ```.

![Add a new Controller](https://apidocs.io/illustration/ruby?step=addCode2&workspaceFolder=Global%20Miles%20E-commerce%20API-Ruby&workspaceName=GlobalMilesECommerceApi&projectName=global_miles_e_commerce_api&gemName=global_miles_e_commerce_api&gemVer=2.1.0)

A new controller class anmed ``` HelloController ``` will be created in a file named ``` hello_controller.rb ``` containing a method named ``` Index ```. In this method, add code for initialization and a sample for its usage.

![Initialize the library](https://apidocs.io/illustration/ruby?step=addCode3&workspaceFolder=Global%20Miles%20E-commerce%20API-Ruby&workspaceName=GlobalMilesECommerceApi&projectName=global_miles_e_commerce_api&gemName=global_miles_e_commerce_api&gemVer=2.1.0)

## How to Test

You can test the generated SDK and the server with automatically generated test
cases as follows:

  1. From terminal/cmd navigate to the root directory of the SDK.
  2. Invoke: `bundle exec rake`

## Initialization

### Authentication
In order to setup authentication and initialization of the API client, you need the following information.

| Parameter | Description |
|-----------|-------------|
| o_auth_client_id | OAuth 2 Client ID |
| o_auth_client_secret | OAuth 2 Client Secret |



API client can be initialized as following.

```ruby
# Configuration parameters and credentials
o_auth_client_id = 'o_auth_client_id' # OAuth 2 Client ID
o_auth_client_secret = 'o_auth_client_secret' # OAuth 2 Client Secret

client = GlobalMilesECommerceApi::GlobalMilesECommerceApiClient.new(
  o_auth_client_id: o_auth_client_id,
  o_auth_client_secret: o_auth_client_secret
)
```

The added initlization code can be debugged by putting a breakpoint in the ``` Index ``` method and running the project in debug mode by selecting ``` Run -> Debug 'Development: TestApp' ```.

![Debug the TestApp](https://apidocs.io/illustration/ruby?step=addCode4&workspaceFolder=Global%20Miles%20E-commerce%20API-Ruby&workspaceName=GlobalMilesECommerceApi&projectName=global_miles_e_commerce_api&gemName=global_miles_e_commerce_api&gemVer=2.1.0&initLine=client%2520%253D%2520GlobalMilesECommerceApiClient.new%2528%2527o_auth_client_id%2527%252C%2520%2527o_auth_client_secret%2527%2529)


You must now authorize the client.

### Authorizing your client

This SDK uses *OAuth 2.0 authorization* to authorize the client.

The `authorize()` method will exchange the OAuth client credentials for an *access token*.
The access token is an object containing information for authorizing client requests.


```ruby
begin
  client.auth.authorize()
rescue GlobalMilesECommerceApi::OAuthProviderException => ex
  # handle exception
end
```

The client can now make authorized endpoint calls.


### Storing an access token for reuse

It is recommended that you store the access token for reuse.

You can store the access token in a file or a database.

```ruby
# store token
save_token_to_database(client.config.o_auth_token)
```

### Creating a client from a stored token

To authorize a client from a stored access token, just set the access token after creating the client:

```ruby
client = GlobalMilesECommerceApi::GlobalMilesECommerceApiClient.new
client.config.o_auth_token = load_token_from_database
```

### Complete example

```ruby
require 'global_miles_e_commerce_api'

include GlobalMilesECommerceApi

# function for storing token to database
def save_token_to_database(token)
  # code to save the token to database
end

# function for loading token from database
def load_token_from_database
  # load token from database and return it (return None if no token exists)
end

# Configuration parameters and credentials
o_auth_client_id = 'o_auth_client_id' # OAuth 2 Client ID
o_auth_client_secret = 'o_auth_client_secret' # OAuth 2 Client Secret

#  create a new client
client = GlobalMilesECommerceApiClient.new(
  o_auth_client_id: o_auth_client_id,
  o_auth_client_secret: o_auth_client_secret
)

# obtain access token, needed for client to be authorized
previous_token = load_token_from_database
if previous_token
  # restore previous access token
  client.config.o_auth_token = previous_token
else
  # obtain new access token
  begin
    token = client.auth.authorize()
    save_token_to_database(token)
  rescue OAuthProviderException => ex
    # handle exception
  end
end

# the client is now authorized and you can use controllers to make endpoint calls
```


# Class Reference

## <a name="list_of_controllers"></a>List of Controllers

* [EarnMilesController](#earn_miles_controller)
* [AuthenticationController](#authentication_controller)
* [ReturnController](#return_controller)
* [PayWithMilesController](#pay_with_miles_controller)

## <a name="earn_miles_controller"></a>![Class: ](https://apidocs.io/img/class.png ".EarnMilesController") EarnMilesController

### Get singleton instance

The singleton instance of the ``` EarnMilesController ``` class can be accessed from the API Client.

```ruby
earnMiles_controller = client.earn_miles
```

### <a name="list_orders"></a>![Method: ](https://apidocs.io/img/method.png ".EarnMilesController.list_orders") list_orders

> This endpoint allows to get list of orders. In order to get detailed order history and reconciliation you can use this endpoint.
> 
> You can try this API with configuring client parameters in Console Tab below. Test OAuthClientId is b30359c21700fd6f2b91154adcb7b37bab3e7e0a33e22682e5dd149d7a6ac4df and OAuthClientSecret is 4bc4335faad41d6a23cd059e495005f00496a64e34e6187b1d72695a8debd28c


```ruby
def list_orders(filter_store_code,
                    filter_completed_at,
                    filter_status = nil,
                    sort = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| filter_store_code |  ``` Required ```  | Filter for an online store. |
| filter_completed_at |  ``` Required ```  | Filter for completed_at field. It is accepted a valid date range value. The format is YYYY-MM-DD..YYYY-MM-DD. |
| filter_status |  ``` Optional ```  | Filter for status field. It is accepted a valid status value of order. |
| sort |  ``` Optional ```  | Sort for some selected fields. In order to sort descending "-" value will be used before the field. Valid field values are "completed_at", "created_at",  "updated_at", "status". |


#### Example Usage

```ruby
filter_store_code = 'filter[store_code]'
filter_completed_at = 'filter[completed_at]'
filter_status = 'filter[status]'
sort = 'sort'

result = earnMiles_controller.list_orders(filter_store_code, filter_completed_at, filter_status, sort)

```


### <a name="create_order"></a>![Method: ](https://apidocs.io/img/method.png ".EarnMilesController.create_order") create_order

> This endpoint allows to create an order for earn miles. It may also include discounts and payments.
> 
> You can try this API with configuring client parameters in Console Tab below. Test OAuthClientId is b30359c21700fd6f2b91154adcb7b37bab3e7e0a33e22682e5dd149d7a6ac4df and OAuthClientSecret is 4bc4335faad41d6a23cd059e495005f00496a64e34e6187b1d72695a8debd28c


```ruby
def create_order(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | The body of the request. |


#### Example Usage

```ruby
body = OrderRequest.new

result = earnMiles_controller.create_order(body)

```


### <a name="retrieve_order"></a>![Method: ](https://apidocs.io/img/method.png ".EarnMilesController.retrieve_order") retrieve_order

> This endpoint allows to get an order.
> 
> You can try this API with configuring client parameters in Console Tab below. Test OAuthClientId is b30359c21700fd6f2b91154adcb7b37bab3e7e0a33e22682e5dd149d7a6ac4df and OAuthClientSecret is 4bc4335faad41d6a23cd059e495005f00496a64e34e6187b1d72695a8debd28c


```ruby
def retrieve_order(transaction_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| transaction_id |  ``` Required ```  | The ID of the transaction that represents the order. |


#### Example Usage

```ruby
transaction_id = 'transaction_id'

result = earnMiles_controller.retrieve_order(transaction_id)

```


### <a name="create_cart"></a>![Method: ](https://apidocs.io/img/method.png ".EarnMilesController.create_cart") create_cart

> This endpoint allows to get available amount of money, based on miles of user and their discounts which is based on cart or items.
> 
> You can try this API with configuring client parameters in Console Tab below. Test OAuthClientId is b30359c21700fd6f2b91154adcb7b37bab3e7e0a33e22682e5dd149d7a6ac4df and OAuthClientSecret is 4bc4335faad41d6a23cd059e495005f00496a64e34e6187b1d72695a8debd28c


```ruby
def create_cart(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | The body of the request. |


#### Example Usage

```ruby
body = CartRequest.new

result = earnMiles_controller.create_cart(body)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="authentication_controller"></a>![Class: ](https://apidocs.io/img/class.png ".AuthenticationController") AuthenticationController

### Get singleton instance

The singleton instance of the ``` AuthenticationController ``` class can be accessed from the API Client.

```ruby
authentication_controller = client.authentication
```

### <a name="create_authentication"></a>![Method: ](https://apidocs.io/img/method.png ".AuthenticationController.create_authentication") create_authentication

> *Tags:*  ``` Skips Authentication ``` 

> An access token will allow you to make requests for the system. We support only one type of token: client_credentials.
> 
> You can try this API with configuring client parameters in Console Tab below. Test OAuthClientId is b30359c21700fd6f2b91154adcb7b37bab3e7e0a33e22682e5dd149d7a6ac4df and OAuthClientSecret is 4bc4335faad41d6a23cd059e495005f00496a64e34e6187b1d72695a8debd28c


```ruby
def create_authentication(accept,
                              content_type,
                              body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accept |  ``` Required ```  ``` DefaultValue ```  | It advertises which content type is able to understand. |
| content_type |  ``` Required ```  ``` DefaultValue ```  | It tells the client what the content type of the returned. |
| body |  ``` Required ```  | The body of the request. |


#### Example Usage

```ruby
accept = 'application/json'
content_type = 'application/json'
body_value = "{\n  \"client_id\": \"{{client_id}}\",\n  \"client_secret\": \"{{client_secret}}\",\n  \"grant_type\": \"{{grant_type}}\"\n}";
body = JSON.parse(body_value);

result = authentication_controller.create_authentication(accept, content_type, body)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="return_controller"></a>![Class: ](https://apidocs.io/img/class.png ".ReturnController") ReturnController

### Get singleton instance

The singleton instance of the ``` ReturnController ``` class can be accessed from the API Client.

```ruby
mreturn_controller = client.mreturn
```

### <a name="retrieve_return"></a>![Method: ](https://apidocs.io/img/method.png ".ReturnController.retrieve_return") retrieve_return

> This endpoint allows to get a return.
> 
> You can try this API with configuring client parameters in Console Tab below. Test OAuthClientId is b30359c21700fd6f2b91154adcb7b37bab3e7e0a33e22682e5dd149d7a6ac4df and OAuthClientSecret is 4bc4335faad41d6a23cd059e495005f00496a64e34e6187b1d72695a8debd28c


```ruby
def retrieve_return(return_provision_token); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| return_provision_token |  ``` Required ```  | The token value of a return. |


#### Example Usage

```ruby
return_provision_token = 'return_provision_token'

result = mreturn_controller.retrieve_return(return_provision_token)

```


### <a name="delete_cancel_return"></a>![Method: ](https://apidocs.io/img/method.png ".ReturnController.delete_cancel_return") delete_cancel_return

> This endpoint allows to cancel a return.
> 
> You can try this API with configuring client parameters in Console Tab below. Test OAuthClientId is b30359c21700fd6f2b91154adcb7b37bab3e7e0a33e22682e5dd149d7a6ac4df and OAuthClientSecret is 4bc4335faad41d6a23cd059e495005f00496a64e34e6187b1d72695a8debd28c


```ruby
def delete_cancel_return(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | The body of the request. |


#### Example Usage

```ruby
body = CancelReturnRequest.new

result = mreturn_controller.delete_cancel_return(body)

```


### <a name="update_complete_return"></a>![Method: ](https://apidocs.io/img/method.png ".ReturnController.update_complete_return") update_complete_return

> This endpoint allows to complete a return.
> 
> You can try this API with configuring client parameters in Console Tab below. Test OAuthClientId is b30359c21700fd6f2b91154adcb7b37bab3e7e0a33e22682e5dd149d7a6ac4df and OAuthClientSecret is 4bc4335faad41d6a23cd059e495005f00496a64e34e6187b1d72695a8debd28c


```ruby
def update_complete_return(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | The body of the request. |


#### Example Usage

```ruby
body = CompleteReturnRequest.new

result = mreturn_controller.update_complete_return(body)

```


### <a name="create_start_return"></a>![Method: ](https://apidocs.io/img/method.png ".ReturnController.create_start_return") create_start_return

> This endpoint allows to start a return for a specific order.
> 
> You can try this API with configuring client parameters in Console Tab below. Test OAuthClientId is b30359c21700fd6f2b91154adcb7b37bab3e7e0a33e22682e5dd149d7a6ac4df and OAuthClientSecret is 4bc4335faad41d6a23cd059e495005f00496a64e34e6187b1d72695a8debd28c


```ruby
def create_start_return(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | The body of the request. |


#### Example Usage

```ruby
body = StartReturnRequest.new

result = mreturn_controller.create_start_return(body)

```


### <a name="list_returns"></a>![Method: ](https://apidocs.io/img/method.png ".ReturnController.list_returns") list_returns

> This endpoint allows to get list of returns. In order to get detailed return history and reconciliation you can use this endpoint.
> 
> You can try this API with configuring client parameters in Console Tab below. Test OAuthClientId is b30359c21700fd6f2b91154adcb7b37bab3e7e0a33e22682e5dd149d7a6ac4df and OAuthClientSecret is 4bc4335faad41d6a23cd059e495005f00496a64e34e6187b1d72695a8debd28c


```ruby
def list_returns(filter_store_code,
                     filter_created_at,
                     filter_status = nil,
                     sort = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| filter_store_code |  ``` Required ```  | Filter for an online store. |
| filter_created_at |  ``` Required ```  | Filter for created_at field. It is accepted a valid date range value. The format is YYYY-MM-DD..YYYY-MM-DD. |
| filter_status |  ``` Optional ```  | Filter for status field. It is accepted a valid status value of return. |
| sort |  ``` Optional ```  | Sort for some selected fields. In order to sort descending "-" value will be used before the field. Valid field values are "created_at",  "updated_at", "status". |


#### Example Usage

```ruby
filter_store_code = 'filter[store_code]'
filter_created_at = 'filter[created_at]'
filter_status = 'filter[status]'
sort = 'sort'

result = mreturn_controller.list_returns(filter_store_code, filter_created_at, filter_status, sort)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="pay_with_miles_controller"></a>![Class: ](https://apidocs.io/img/class.png ".PayWithMilesController") PayWithMilesController

### Get singleton instance

The singleton instance of the ``` PayWithMilesController ``` class can be accessed from the API Client.

```ruby
payWithMiles_controller = client.pay_with_miles
```

### <a name="list_mile_payments"></a>![Method: ](https://apidocs.io/img/method.png ".PayWithMilesController.list_mile_payments") list_mile_payments

> This endpoint allows to get list of payments. In order to get detailed payment history and reconciliation you can use this endpoint.
> 
> You can try this API with configuring client parameters in Console Tab below. Test OAuthClientId is b30359c21700fd6f2b91154adcb7b37bab3e7e0a33e22682e5dd149d7a6ac4df and OAuthClientSecret is 4bc4335faad41d6a23cd059e495005f00496a64e34e6187b1d72695a8debd28c


```ruby
def list_mile_payments(filter_store_code,
                           filter_created_at,
                           filter_status = nil,
                           sort = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| filter_store_code |  ``` Required ```  | Filter for an online store. |
| filter_created_at |  ``` Required ```  | Filter for created_at field. It is accepted a valid date range value. The format is YYYY-MM-DD..YYYY-MM-DD. |
| filter_status |  ``` Optional ```  | Filter for status field. It is accepted a valid status value of payment. |
| sort |  ``` Optional ```  | Sort for some selected fields. In order to sort descending "-" value will be used before the field. Valid field values are "created_at",  "updated_at", "status". |


#### Example Usage

```ruby
filter_store_code = 'filter[store_code]'
filter_created_at = 'filter[created_at]'
filter_status = 'filter[status]'
sort = 'sort'

result = payWithMiles_controller.list_mile_payments(filter_store_code, filter_created_at, filter_status, sort)

```


### <a name="create_start_mile_payment"></a>![Method: ](https://apidocs.io/img/method.png ".PayWithMilesController.create_start_mile_payment") create_start_mile_payment

> After successful authentication and retrieving needed token, this endpoint allows to start a payment transaction. To be able to complete whole payment process successfully also check "Complete Mile Payment endpoint" please.
> 
> You can try this API with configuring client parameters in Console Tab below. Test OAuthClientId is b30359c21700fd6f2b91154adcb7b37bab3e7e0a33e22682e5dd149d7a6ac4df and OAuthClientSecret is 4bc4335faad41d6a23cd059e495005f00496a64e34e6187b1d72695a8debd28c


```ruby
def create_start_mile_payment(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | The body of the request. |


#### Example Usage

```ruby
body = StartMilePaymentRequest.new

result = payWithMiles_controller.create_start_mile_payment(body)

```


### <a name="update_complete_mile_payment"></a>![Method: ](https://apidocs.io/img/method.png ".PayWithMilesController.update_complete_mile_payment") update_complete_mile_payment

> This endpoint allows to complete a payment.
> 
> You can try this API with configuring client parameters in Console Tab below. Test OAuthClientId is b30359c21700fd6f2b91154adcb7b37bab3e7e0a33e22682e5dd149d7a6ac4df and OAuthClientSecret is 4bc4335faad41d6a23cd059e495005f00496a64e34e6187b1d72695a8debd28c


```ruby
def update_complete_mile_payment(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | The body of the request. |


#### Example Usage

```ruby
body = CompleteMilePaymentRequest.new

result = payWithMiles_controller.update_complete_mile_payment(body)

```


### <a name="delete_cancel_mile_payment"></a>![Method: ](https://apidocs.io/img/method.png ".PayWithMilesController.delete_cancel_mile_payment") delete_cancel_mile_payment

> This endpoint allows to cancel a payment.
> 
> You can try this API with configuring client parameters in Console Tab below. Test OAuthClientId is b30359c21700fd6f2b91154adcb7b37bab3e7e0a33e22682e5dd149d7a6ac4df and OAuthClientSecret is 4bc4335faad41d6a23cd059e495005f00496a64e34e6187b1d72695a8debd28c


```ruby
def delete_cancel_mile_payment(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | The body of the request. |


#### Example Usage

```ruby
body = CancelMilePaymentRequest.new

result = payWithMiles_controller.delete_cancel_mile_payment(body)

```


### <a name="create_refund_mile_payment"></a>![Method: ](https://apidocs.io/img/method.png ".PayWithMilesController.create_refund_mile_payment") create_refund_mile_payment

> This endpoint allows to refund a payment.
> 
> You can try this API with configuring client parameters in Console Tab below. Test OAuthClientId is b30359c21700fd6f2b91154adcb7b37bab3e7e0a33e22682e5dd149d7a6ac4df and OAuthClientSecret is 4bc4335faad41d6a23cd059e495005f00496a64e34e6187b1d72695a8debd28c


```ruby
def create_refund_mile_payment(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | The body of the request. |


#### Example Usage

```ruby
body = RefundMilePaymentRequest.new

result = payWithMiles_controller.create_refund_mile_payment(body)

```


[Back to List of Controllers](#list_of_controllers)



