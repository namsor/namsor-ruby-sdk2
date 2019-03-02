# NamSorClient::SocialApi

All URIs are relative to *https://v2.namsor.com/NamSorAPIv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**phone_code**](SocialApi.md#phone_code) | **GET** /api2/json/phoneCode/{firstName}/{lastName}/{phoneNumber} | [USES 11 UNITS] Infer the likely country and phone prefix, given a personal name and formatted / unformatted phone number.
[**phone_code_batch**](SocialApi.md#phone_code_batch) | **POST** /api2/json/phoneCodeBatch | [USES 11 UNITS] Infer the likely country and phone prefix, of up to 1000 personal names, detecting automatically the local context given a name and formatted / unformatted phone number.
[**phone_code_geo**](SocialApi.md#phone_code_geo) | **GET** /api2/json/phoneCodeGeo/{firstName}/{lastName}/{phoneNumber}/{countryIso2} | [USES 11 UNITS] Infer the likely phone prefix, given a personal name and formatted / unformatted phone number, with a local context (ISO2 country of residence).
[**phone_code_geo_batch**](SocialApi.md#phone_code_geo_batch) | **POST** /api2/json/phoneCodeGeoBatch | [USES 11 UNITS] Infer the likely country and phone prefix, of up to 1000 personal names, with a local context (ISO2 country of residence).


# **phone_code**
> FirstLastNamePhoneCodedOut phone_code(first_name, last_name, phone_number)

[USES 11 UNITS] Infer the likely country and phone prefix, given a personal name and formatted / unformatted phone number.

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

api_instance = NamSorClient::SocialApi.new
first_name = 'first_name_example' # String | 
last_name = 'last_name_example' # String | 
phone_number = 'phone_number_example' # String | 

begin
  #[USES 11 UNITS] Infer the likely country and phone prefix, given a personal name and formatted / unformatted phone number.
  result = api_instance.phone_code(first_name, last_name, phone_number)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling SocialApi->phone_code: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **first_name** | **String**|  | 
 **last_name** | **String**|  | 
 **phone_number** | **String**|  | 

### Return type

[**FirstLastNamePhoneCodedOut**](FirstLastNamePhoneCodedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **phone_code_batch**
> BatchFirstLastNamePhoneCodedOut phone_code_batch(opts)

[USES 11 UNITS] Infer the likely country and phone prefix, of up to 1000 personal names, detecting automatically the local context given a name and formatted / unformatted phone number.

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

api_instance = NamSorClient::SocialApi.new
opts = {
  batch_first_last_name_phone_number_in: NamSorClient::BatchFirstLastNamePhoneNumberIn.new # BatchFirstLastNamePhoneNumberIn | A list of personal names
}

begin
  #[USES 11 UNITS] Infer the likely country and phone prefix, of up to 1000 personal names, detecting automatically the local context given a name and formatted / unformatted phone number.
  result = api_instance.phone_code_batch(opts)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling SocialApi->phone_code_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_first_last_name_phone_number_in** | [**BatchFirstLastNamePhoneNumberIn**](BatchFirstLastNamePhoneNumberIn.md)| A list of personal names | [optional] 

### Return type

[**BatchFirstLastNamePhoneCodedOut**](BatchFirstLastNamePhoneCodedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **phone_code_geo**
> FirstLastNamePhoneCodedOut phone_code_geo(first_name, last_name, phone_number, country_iso2)

[USES 11 UNITS] Infer the likely phone prefix, given a personal name and formatted / unformatted phone number, with a local context (ISO2 country of residence).

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

api_instance = NamSorClient::SocialApi.new
first_name = 'first_name_example' # String | 
last_name = 'last_name_example' # String | 
phone_number = 'phone_number_example' # String | 
country_iso2 = 'country_iso2_example' # String | 

begin
  #[USES 11 UNITS] Infer the likely phone prefix, given a personal name and formatted / unformatted phone number, with a local context (ISO2 country of residence).
  result = api_instance.phone_code_geo(first_name, last_name, phone_number, country_iso2)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling SocialApi->phone_code_geo: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **first_name** | **String**|  | 
 **last_name** | **String**|  | 
 **phone_number** | **String**|  | 
 **country_iso2** | **String**|  | 

### Return type

[**FirstLastNamePhoneCodedOut**](FirstLastNamePhoneCodedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **phone_code_geo_batch**
> BatchFirstLastNamePhoneCodedOut phone_code_geo_batch(opts)

[USES 11 UNITS] Infer the likely country and phone prefix, of up to 1000 personal names, with a local context (ISO2 country of residence).

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

api_instance = NamSorClient::SocialApi.new
opts = {
  batch_first_last_name_phone_number_geo_in: NamSorClient::BatchFirstLastNamePhoneNumberGeoIn.new # BatchFirstLastNamePhoneNumberGeoIn | A list of personal names
}

begin
  #[USES 11 UNITS] Infer the likely country and phone prefix, of up to 1000 personal names, with a local context (ISO2 country of residence).
  result = api_instance.phone_code_geo_batch(opts)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling SocialApi->phone_code_geo_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_first_last_name_phone_number_geo_in** | [**BatchFirstLastNamePhoneNumberGeoIn**](BatchFirstLastNamePhoneNumberGeoIn.md)| A list of personal names | [optional] 

### Return type

[**BatchFirstLastNamePhoneCodedOut**](BatchFirstLastNamePhoneCodedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



