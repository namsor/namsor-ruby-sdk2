# NamSorClient::AdminApi

All URIs are relative to *https://v2.namsor.com/NamSorAPIv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**api_usage**](AdminApi.md#api_usage) | **GET** /api2/json/apiUsage | Print current API usage.
[**api_usage_history**](AdminApi.md#api_usage_history) | **GET** /api2/json/apiUsageHistory | Print historical API usage.
[**api_usage_history_aggregate**](AdminApi.md#api_usage_history_aggregate) | **GET** /api2/json/apiUsageHistoryAggregate | Print historical API usage (in an aggregated view, by service, by day/hour/min).
[**available_plans**](AdminApi.md#available_plans) | **GET** /api2/json/availablePlans | List all available plans in the default currency (usd).
[**available_plans1**](AdminApi.md#available_plans1) | **GET** /api2/json/availablePlans/{token} | List all available plans in the user&#39;s preferred currency.
[**available_services**](AdminApi.md#available_services) | **GET** /api2/json/apiServices | List of API services and usage cost in Units (default is 1&#x3D;ONE Unit).
[**billing_currencies**](AdminApi.md#billing_currencies) | **GET** /api2/json/billingCurrencies | List possible currency options for billing (USD, EUR, GBP, ...)
[**billing_history**](AdminApi.md#billing_history) | **GET** /api2/json/billingHistory/{token} | Read the history billing information (invoices paid via Stripe or manually).
[**billing_info**](AdminApi.md#billing_info) | **GET** /api2/json/billingInfo/{token} | Read the billing information (company name, address, phone, vat ID)
[**charge**](AdminApi.md#charge) | **POST** /api2/json/charge | Create a Stripe Customer, based on a payment card token (from secure StripeJS) and email.
[**corporate_key**](AdminApi.md#corporate_key) | **GET** /api2/json/corporateKey/{apiKey}/{corporate} | Setting an API Key to a corporate status.
[**debug_level**](AdminApi.md#debug_level) | **GET** /api2/json/debugLevel/{logger}/{level} | Update debug level for a classifier
[**invalidate_cache**](AdminApi.md#invalidate_cache) | **GET** /api2/json/invalidateCache | Invalidate system caches.
[**namsor_counter**](AdminApi.md#namsor_counter) | **GET** /api2/json/namsorCounter | Get the overall API counter
[**payment_info**](AdminApi.md#payment_info) | **GET** /api2/json/paymentInfo/{token} | Get the Stripe payment information associated with the current google auth session token.
[**procure_key**](AdminApi.md#procure_key) | **GET** /api2/json/procureKey/{token} | Procure an API Key (sent via Email), based on an auth token. Keep your API Key secret.
[**redeploy_ui**](AdminApi.md#redeploy_ui) | **GET** /api2/json/redeployUI | Redeploy UI from current dev branch.
[**redeploy_ui1**](AdminApi.md#redeploy_ui1) | **GET** /api2/json/redeployUI/{live} | Redeploy UI from current dev branch.
[**remove_user_account**](AdminApi.md#remove_user_account) | **GET** /api2/json/removeUserAccount/{token} | Subscribe to a give API plan, using the user&#39;s preferred or default currency.
[**shutdown**](AdminApi.md#shutdown) | **GET** /api2/json/shutdown | Stop learning and shutdown system.
[**software_version**](AdminApi.md#software_version) | **GET** /api2/json/softwareVersion | Get the current software version
[**source_stats**](AdminApi.md#source_stats) | **GET** /api2/json/sourceStats/{source} | Print basic source statistics.
[**stats**](AdminApi.md#stats) | **GET** /api2/json/stats | Print basic system statistics.
[**stripe_connect**](AdminApi.md#stripe_connect) | **GET** /api2/json/stripeConnect | Connects a Stripe Account.
[**subscribe_plan**](AdminApi.md#subscribe_plan) | **GET** /api2/json/subscribePlan/{planName}/{token} | Subscribe to a give API plan, using the user&#39;s preferred or default currency.
[**update_billing_info**](AdminApi.md#update_billing_info) | **POST** /api2/json/updateBillingInfo/{token} | Sets or update the billing information (company name, address, phone, vat ID)
[**update_limit**](AdminApi.md#update_limit) | **GET** /api2/json/updateLimit/{usageLimit}/{hardOrSoft}/{token} | Modifies the hard/soft limit on the API plan&#39;s overages (default is 0$ soft limit).
[**update_payment_default**](AdminApi.md#update_payment_default) | **GET** /api2/json/updatePaymentDefault/{defautSourceId}/{token} | Update the default Stripe card associated with the current google auth session token.
[**user_info**](AdminApi.md#user_info) | **GET** /api2/json/userInfo/{token} | Get the user profile associated with the current google auth session token.
[**verify_email**](AdminApi.md#verify_email) | **GET** /api2/json/verifyEmail/{emailToken} | Verifies an email, based on token sent to that email
[**verify_remove_email**](AdminApi.md#verify_remove_email) | **GET** /api2/json/verifyRemoveEmail/{emailToken} | Verifies an email, based on token sent to that email
[**vet**](AdminApi.md#vet) | **GET** /api2/json/vetting/{source}/{vetted} | Vetting of a source.


# **api_usage**
> APIPeriodUsageOut api_usage

Print current API usage.

### Example
```ruby
# load the gem
require 'namsor_client'
# setup authorization
NamSorClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = NamSorClient::AdminApi.new

begin
  #Print current API usage.
  result = api_instance.api_usage
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling AdminApi->api_usage: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**APIPeriodUsageOut**](APIPeriodUsageOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **api_usage_history**
> APIPeriodUsageOut api_usage_history

Print historical API usage.

### Example
```ruby
# load the gem
require 'namsor_client'
# setup authorization
NamSorClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = NamSorClient::AdminApi.new

begin
  #Print historical API usage.
  result = api_instance.api_usage_history
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling AdminApi->api_usage_history: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**APIPeriodUsageOut**](APIPeriodUsageOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **api_usage_history_aggregate**
> APIPeriodUsageOut api_usage_history_aggregate

Print historical API usage (in an aggregated view, by service, by day/hour/min).

### Example
```ruby
# load the gem
require 'namsor_client'
# setup authorization
NamSorClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = NamSorClient::AdminApi.new

begin
  #Print historical API usage (in an aggregated view, by service, by day/hour/min).
  result = api_instance.api_usage_history_aggregate
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling AdminApi->api_usage_history_aggregate: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**APIPeriodUsageOut**](APIPeriodUsageOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **available_plans**
> APIPlansOut available_plans

List all available plans in the default currency (usd).

### Example
```ruby
# load the gem
require 'namsor_client'
# setup authorization
NamSorClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = NamSorClient::AdminApi.new

begin
  #List all available plans in the default currency (usd).
  result = api_instance.available_plans
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling AdminApi->available_plans: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**APIPlansOut**](APIPlansOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **available_plans1**
> APIPlansOut available_plans1(token)

List all available plans in the user's preferred currency.

### Example
```ruby
# load the gem
require 'namsor_client'
# setup authorization
NamSorClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = NamSorClient::AdminApi.new
token = 'token_example' # String | 

begin
  #List all available plans in the user's preferred currency.
  result = api_instance.available_plans1(token)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling AdminApi->available_plans1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**|  | 

### Return type

[**APIPlansOut**](APIPlansOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **available_services**
> APIPlansOut available_services

List of API services and usage cost in Units (default is 1=ONE Unit).

### Example
```ruby
# load the gem
require 'namsor_client'
# setup authorization
NamSorClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = NamSorClient::AdminApi.new

begin
  #List of API services and usage cost in Units (default is 1=ONE Unit).
  result = api_instance.available_services
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling AdminApi->available_services: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**APIPlansOut**](APIPlansOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **billing_currencies**
> CurrenciesOut billing_currencies

List possible currency options for billing (USD, EUR, GBP, ...)

### Example
```ruby
# load the gem
require 'namsor_client'
# setup authorization
NamSorClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = NamSorClient::AdminApi.new

begin
  #List possible currency options for billing (USD, EUR, GBP, ...)
  result = api_instance.billing_currencies
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling AdminApi->billing_currencies: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CurrenciesOut**](CurrenciesOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **billing_history**
> BillingHistoryOut billing_history(token)

Read the history billing information (invoices paid via Stripe or manually).

### Example
```ruby
# load the gem
require 'namsor_client'
# setup authorization
NamSorClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = NamSorClient::AdminApi.new
token = 'token_example' # String | 

begin
  #Read the history billing information (invoices paid via Stripe or manually).
  result = api_instance.billing_history(token)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling AdminApi->billing_history: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**|  | 

### Return type

[**BillingHistoryOut**](BillingHistoryOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **billing_info**
> BillingInfoInOut billing_info(token)

Read the billing information (company name, address, phone, vat ID)

### Example
```ruby
# load the gem
require 'namsor_client'
# setup authorization
NamSorClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = NamSorClient::AdminApi.new
token = 'token_example' # String | 

begin
  #Read the billing information (company name, address, phone, vat ID)
  result = api_instance.billing_info(token)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling AdminApi->billing_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**|  | 

### Return type

[**BillingInfoInOut**](BillingInfoInOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **charge**
> APIKeyOut charge(opts)

Create a Stripe Customer, based on a payment card token (from secure StripeJS) and email.

### Example
```ruby
# load the gem
require 'namsor_client'
# setup authorization
NamSorClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = NamSorClient::AdminApi.new
opts = {
  inline_object: NamSorClient::InlineObject.new # InlineObject | 
}

begin
  #Create a Stripe Customer, based on a payment card token (from secure StripeJS) and email.
  result = api_instance.charge(opts)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling AdminApi->charge: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inline_object** | [**InlineObject**](InlineObject.md)|  | [optional] 

### Return type

[**APIKeyOut**](APIKeyOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **corporate_key**
> corporate_key(api_key, corporate)

Setting an API Key to a corporate status.

### Example
```ruby
# load the gem
require 'namsor_client'
# setup authorization
NamSorClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = NamSorClient::AdminApi.new
api_key = 'api_key_example' # String | 
corporate = true # BOOLEAN | 

begin
  #Setting an API Key to a corporate status.
  api_instance.corporate_key(api_key, corporate)
rescue NamSorClient::ApiError => e
  puts "Exception when calling AdminApi->corporate_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key** | **String**|  | 
 **corporate** | **BOOLEAN**|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **debug_level**
> debug_level(logger, level)

Update debug level for a classifier

### Example
```ruby
# load the gem
require 'namsor_client'
# setup authorization
NamSorClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = NamSorClient::AdminApi.new
logger = 'logger_example' # String | 
level = 'level_example' # String | 

begin
  #Update debug level for a classifier
  api_instance.debug_level(logger, level)
rescue NamSorClient::ApiError => e
  puts "Exception when calling AdminApi->debug_level: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **logger** | **String**|  | 
 **level** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **invalidate_cache**
> invalidate_cache

Invalidate system caches.

### Example
```ruby
# load the gem
require 'namsor_client'
# setup authorization
NamSorClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = NamSorClient::AdminApi.new

begin
  #Invalidate system caches.
  api_instance.invalidate_cache
rescue NamSorClient::ApiError => e
  puts "Exception when calling AdminApi->invalidate_cache: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **namsor_counter**
> SoftwareVersionOut namsor_counter

Get the overall API counter

### Example
```ruby
# load the gem
require 'namsor_client'
# setup authorization
NamSorClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = NamSorClient::AdminApi.new

begin
  #Get the overall API counter
  result = api_instance.namsor_counter
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling AdminApi->namsor_counter: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SoftwareVersionOut**](SoftwareVersionOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **payment_info**
> APIKeyOut payment_info(token)

Get the Stripe payment information associated with the current google auth session token.

### Example
```ruby
# load the gem
require 'namsor_client'
# setup authorization
NamSorClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = NamSorClient::AdminApi.new
token = 'token_example' # String | 

begin
  #Get the Stripe payment information associated with the current google auth session token.
  result = api_instance.payment_info(token)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling AdminApi->payment_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**|  | 

### Return type

[**APIKeyOut**](APIKeyOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procure_key**
> APIKeyOut procure_key(token)

Procure an API Key (sent via Email), based on an auth token. Keep your API Key secret.

### Example
```ruby
# load the gem
require 'namsor_client'
# setup authorization
NamSorClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = NamSorClient::AdminApi.new
token = 'token_example' # String | 

begin
  #Procure an API Key (sent via Email), based on an auth token. Keep your API Key secret.
  result = api_instance.procure_key(token)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling AdminApi->procure_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**|  | 

### Return type

[**APIKeyOut**](APIKeyOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **redeploy_ui**
> redeploy_ui

Redeploy UI from current dev branch.

### Example
```ruby
# load the gem
require 'namsor_client'
# setup authorization
NamSorClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = NamSorClient::AdminApi.new

begin
  #Redeploy UI from current dev branch.
  api_instance.redeploy_ui
rescue NamSorClient::ApiError => e
  puts "Exception when calling AdminApi->redeploy_ui: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **redeploy_ui1**
> redeploy_ui1(live)

Redeploy UI from current dev branch.

### Example
```ruby
# load the gem
require 'namsor_client'
# setup authorization
NamSorClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = NamSorClient::AdminApi.new
live = true # BOOLEAN | 

begin
  #Redeploy UI from current dev branch.
  api_instance.redeploy_ui1(live)
rescue NamSorClient::ApiError => e
  puts "Exception when calling AdminApi->redeploy_ui1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **live** | **BOOLEAN**|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **remove_user_account**
> APIPlanSubscriptionOut remove_user_account(token)

Subscribe to a give API plan, using the user's preferred or default currency.

### Example
```ruby
# load the gem
require 'namsor_client'
# setup authorization
NamSorClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = NamSorClient::AdminApi.new
token = 'token_example' # String | 

begin
  #Subscribe to a give API plan, using the user's preferred or default currency.
  result = api_instance.remove_user_account(token)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling AdminApi->remove_user_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**|  | 

### Return type

[**APIPlanSubscriptionOut**](APIPlanSubscriptionOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **shutdown**
> shutdown

Stop learning and shutdown system.

### Example
```ruby
# load the gem
require 'namsor_client'
# setup authorization
NamSorClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = NamSorClient::AdminApi.new

begin
  #Stop learning and shutdown system.
  api_instance.shutdown
rescue NamSorClient::ApiError => e
  puts "Exception when calling AdminApi->shutdown: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **software_version**
> SoftwareVersionOut software_version

Get the current software version

### Example
```ruby
# load the gem
require 'namsor_client'
# setup authorization
NamSorClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = NamSorClient::AdminApi.new

begin
  #Get the current software version
  result = api_instance.software_version
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling AdminApi->software_version: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SoftwareVersionOut**](SoftwareVersionOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **source_stats**
> SystemMetricsOut source_stats(source)

Print basic source statistics.

### Example
```ruby
# load the gem
require 'namsor_client'
# setup authorization
NamSorClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = NamSorClient::AdminApi.new
source = 'source_example' # String | 

begin
  #Print basic source statistics.
  result = api_instance.source_stats(source)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling AdminApi->source_stats: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source** | **String**|  | 

### Return type

[**SystemMetricsOut**](SystemMetricsOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **stats**
> SystemMetricsOut stats

Print basic system statistics.

### Example
```ruby
# load the gem
require 'namsor_client'
# setup authorization
NamSorClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = NamSorClient::AdminApi.new

begin
  #Print basic system statistics.
  result = api_instance.stats
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling AdminApi->stats: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SystemMetricsOut**](SystemMetricsOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **stripe_connect**
> stripe_connect(opts)

Connects a Stripe Account.

### Example
```ruby
# load the gem
require 'namsor_client'
# setup authorization
NamSorClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = NamSorClient::AdminApi.new
opts = {
  scope: 'scope_example', # String | 
  code: 'code_example', # String | 
  error: 'error_example', # String | 
  error_description: 'error_description_example' # String | 
}

begin
  #Connects a Stripe Account.
  api_instance.stripe_connect(opts)
rescue NamSorClient::ApiError => e
  puts "Exception when calling AdminApi->stripe_connect: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scope** | **String**|  | [optional] 
 **code** | **String**|  | [optional] 
 **error** | **String**|  | [optional] 
 **error_description** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **subscribe_plan**
> APIPlanSubscriptionOut subscribe_plan(plan_name, token)

Subscribe to a give API plan, using the user's preferred or default currency.

### Example
```ruby
# load the gem
require 'namsor_client'
# setup authorization
NamSorClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = NamSorClient::AdminApi.new
plan_name = 'plan_name_example' # String | 
token = 'token_example' # String | 

begin
  #Subscribe to a give API plan, using the user's preferred or default currency.
  result = api_instance.subscribe_plan(plan_name, token)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling AdminApi->subscribe_plan: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **plan_name** | **String**|  | 
 **token** | **String**|  | 

### Return type

[**APIPlanSubscriptionOut**](APIPlanSubscriptionOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_billing_info**
> BillingInfoInOut update_billing_info(token, opts)

Sets or update the billing information (company name, address, phone, vat ID)

### Example
```ruby
# load the gem
require 'namsor_client'
# setup authorization
NamSorClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = NamSorClient::AdminApi.new
token = 'token_example' # String | 
opts = {
  billing_info_in_out: NamSorClient::BillingInfoInOut.new # BillingInfoInOut | 
}

begin
  #Sets or update the billing information (company name, address, phone, vat ID)
  result = api_instance.update_billing_info(token, opts)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling AdminApi->update_billing_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**|  | 
 **billing_info_in_out** | [**BillingInfoInOut**](BillingInfoInOut.md)|  | [optional] 

### Return type

[**BillingInfoInOut**](BillingInfoInOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/json



# **update_limit**
> APIPeriodUsageOut update_limit(usage_limit, hard_or_soft, token)

Modifies the hard/soft limit on the API plan's overages (default is 0$ soft limit).

### Example
```ruby
# load the gem
require 'namsor_client'
# setup authorization
NamSorClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = NamSorClient::AdminApi.new
usage_limit = 56 # Integer | 
hard_or_soft = true # BOOLEAN | 
token = 'token_example' # String | 

begin
  #Modifies the hard/soft limit on the API plan's overages (default is 0$ soft limit).
  result = api_instance.update_limit(usage_limit, hard_or_soft, token)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling AdminApi->update_limit: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **usage_limit** | **Integer**|  | 
 **hard_or_soft** | **BOOLEAN**|  | 
 **token** | **String**|  | 

### Return type

[**APIPeriodUsageOut**](APIPeriodUsageOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_payment_default**
> APIKeyOut update_payment_default(defaut_source_id, token)

Update the default Stripe card associated with the current google auth session token.

### Example
```ruby
# load the gem
require 'namsor_client'
# setup authorization
NamSorClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = NamSorClient::AdminApi.new
defaut_source_id = 'defaut_source_id_example' # String | 
token = 'token_example' # String | 

begin
  #Update the default Stripe card associated with the current google auth session token.
  result = api_instance.update_payment_default(defaut_source_id, token)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling AdminApi->update_payment_default: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **defaut_source_id** | **String**|  | 
 **token** | **String**|  | 

### Return type

[**APIKeyOut**](APIKeyOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **user_info**
> APIKeyOut user_info(token)

Get the user profile associated with the current google auth session token.

### Example
```ruby
# load the gem
require 'namsor_client'
# setup authorization
NamSorClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = NamSorClient::AdminApi.new
token = 'token_example' # String | 

begin
  #Get the user profile associated with the current google auth session token.
  result = api_instance.user_info(token)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling AdminApi->user_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**|  | 

### Return type

[**APIKeyOut**](APIKeyOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **verify_email**
> APIKeyOut verify_email(email_token)

Verifies an email, based on token sent to that email

### Example
```ruby
# load the gem
require 'namsor_client'
# setup authorization
NamSorClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = NamSorClient::AdminApi.new
email_token = 'email_token_example' # String | 

begin
  #Verifies an email, based on token sent to that email
  result = api_instance.verify_email(email_token)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling AdminApi->verify_email: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_token** | **String**|  | 

### Return type

[**APIKeyOut**](APIKeyOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **verify_remove_email**
> APIKeyOut verify_remove_email(email_token)

Verifies an email, based on token sent to that email

### Example
```ruby
# load the gem
require 'namsor_client'
# setup authorization
NamSorClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = NamSorClient::AdminApi.new
email_token = 'email_token_example' # String | 

begin
  #Verifies an email, based on token sent to that email
  result = api_instance.verify_remove_email(email_token)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling AdminApi->verify_remove_email: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_token** | **String**|  | 

### Return type

[**APIKeyOut**](APIKeyOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **vet**
> vet(source, vetted)

Vetting of a source.

### Example
```ruby
# load the gem
require 'namsor_client'
# setup authorization
NamSorClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = NamSorClient::AdminApi.new
source = 'source_example' # String | 
vetted = true # BOOLEAN | 

begin
  #Vetting of a source.
  api_instance.vet(source, vetted)
rescue NamSorClient::ApiError => e
  puts "Exception when calling AdminApi->vet: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source** | **String**|  | 
 **vetted** | **BOOLEAN**|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



