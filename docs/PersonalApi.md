# NamSorClient::PersonalApi

All URIs are relative to *https://v2.namsor.com/NamSorAPIv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**country**](PersonalApi.md#country) | **GET** /api2/json/country/{personalNameFull} | [USES 10 UNITS] Infer the likely country of residence of a personal full name, or one surname. Assumes names as they are in the country of residence OR the country of origin.
[**country_batch**](PersonalApi.md#country_batch) | **POST** /api2/json/countryBatch | [USES 10 UNITS] Infer the likely country of residence of up to 1000 personal full names, or surnames. Assumes names as they are in the country of residence OR the country of origin.
[**diaspora**](PersonalApi.md#diaspora) | **GET** /api2/json/diaspora/{countryIso2}/{firstName}/{lastName} | [USES 20 UNITS] Infer the likely ethnicity/diaspora of a personal name, given a country of residence ISO2 code (ex. US, CA, AU, NZ etc.)
[**diaspora_batch**](PersonalApi.md#diaspora_batch) | **POST** /api2/json/diasporaBatch | [USES 20 UNITS] Infer the likely ethnicity/diaspora of up to 1000 personal names, given a country of residence ISO2 code (ex. US, CA, AU, NZ etc.)
[**gender**](PersonalApi.md#gender) | **GET** /api2/json/gender/{firstName}/{lastName} | Infer the likely gender of a name.
[**gender_batch**](PersonalApi.md#gender_batch) | **POST** /api2/json/genderBatch | Infer the likely gender of up to 1000 names, detecting automatically the cultural context.
[**gender_full**](PersonalApi.md#gender_full) | **GET** /api2/json/genderFull/{fullName} | Infer the likely gender of a full name, ex. John H. Smith
[**gender_full_batch**](PersonalApi.md#gender_full_batch) | **POST** /api2/json/genderFullBatch | Infer the likely gender of up to 1000 full names, detecting automatically the cultural context.
[**gender_full_geo**](PersonalApi.md#gender_full_geo) | **GET** /api2/json/genderFullGeo/{fullName}/{countryIso2} | Infer the likely gender of a full name, given a local context (ISO2 country code).
[**gender_full_geo_batch**](PersonalApi.md#gender_full_geo_batch) | **POST** /api2/json/genderFullGeoBatch | Infer the likely gender of up to 1000 full names, with a given cultural context (country ISO2 code).
[**gender_geo**](PersonalApi.md#gender_geo) | **GET** /api2/json/genderGeo/{firstName}/{lastName}/{countryIso2} | Infer the likely gender of a name, given a local context (ISO2 country code).
[**gender_geo_batch**](PersonalApi.md#gender_geo_batch) | **POST** /api2/json/genderGeoBatch | Infer the likely gender of up to 1000 names, each given a local context (ISO2 country code).
[**origin**](PersonalApi.md#origin) | **GET** /api2/json/origin/{firstName}/{lastName} | [USES 10 UNITS] Infer the likely country of origin of a personal name. Assumes names as they are in the country of origin. For US, CA, AU, NZ and other melting-pots : use &#39;diaspora&#39; instead.
[**origin_batch**](PersonalApi.md#origin_batch) | **POST** /api2/json/originBatch | [USES 10 UNITS] Infer the likely country of origin of up to 1000 names, detecting automatically the cultural context.
[**parse_name**](PersonalApi.md#parse_name) | **GET** /api2/json/parseName/{nameFull} | Infer the likely first/last name structure of a name, ex. John Smith or SMITH, John or SMITH; John. 
[**parse_name_batch**](PersonalApi.md#parse_name_batch) | **POST** /api2/json/parseNameBatch | Infer the likely first/last name structure of a name, ex. John Smith or SMITH, John or SMITH; John.
[**parse_name_geo**](PersonalApi.md#parse_name_geo) | **GET** /api2/json/parseName/{nameFull}/{countryIso2} | Infer the likely first/last name structure of a name, ex. John Smith or SMITH, John or SMITH; John. For better accuracy, provide a geographic context.
[**parse_name_geo_batch**](PersonalApi.md#parse_name_geo_batch) | **POST** /api2/json/parseNameGeoBatch | Infer the likely first/last name structure of a name, ex. John Smith or SMITH, John or SMITH; John. Giving a local context improves precision. 
[**parsed_gender_batch**](PersonalApi.md#parsed_gender_batch) | **POST** /api2/json/parsedGenderBatch | Infer the likely gender of up to 1000 fully parsed names, detecting automatically the cultural context.
[**parsed_gender_geo_batch**](PersonalApi.md#parsed_gender_geo_batch) | **POST** /api2/json/parsedGenderGeoBatch | Infer the likely gender of up to 1000 fully parsed names, detecting automatically the cultural context.
[**us_race_ethnicity**](PersonalApi.md#us_race_ethnicity) | **GET** /api2/json/usRaceEthnicity/{firstName}/{lastName} | [USES 10 UNITS] Infer a US resident&#39;s likely race/ethnicity according to US Census taxonomy W_NL (white, non latino), HL (hispano latino),  A (asian, non latino), B_NL (black, non latino).
[**us_race_ethnicity_batch**](PersonalApi.md#us_race_ethnicity_batch) | **POST** /api2/json/usRaceEthnicityBatch | [USES 10 UNITS] Infer up-to 1000 US resident&#39;s likely race/ethnicity according to US Census taxonomy.
[**us_race_ethnicity_zip5**](PersonalApi.md#us_race_ethnicity_zip5) | **GET** /api2/json/usRaceEthnicityZIP5/{firstName}/{lastName}/{zip5Code} | [USES 10 UNITS] Infer a US resident&#39;s likely race/ethnicity according to US Census taxonomy, using (optional) ZIP5 code info. Output is W_NL (white, non latino), HL (hispano latino),  A (asian, non latino), B_NL (black, non latino).
[**us_zip_race_ethnicity_batch**](PersonalApi.md#us_zip_race_ethnicity_batch) | **POST** /api2/json/usZipRaceEthnicityBatch | [USES 10 UNITS] Infer up-to 1000 US resident&#39;s likely race/ethnicity according to US Census taxonomy, with (optional) ZIP code.


# **country**
> PersonalNameGeoOut country(personal_name_full)

[USES 10 UNITS] Infer the likely country of residence of a personal full name, or one surname. Assumes names as they are in the country of residence OR the country of origin.

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

api_instance = NamSorClient::PersonalApi.new
personal_name_full = 'personal_name_full_example' # String | 

begin
  #[USES 10 UNITS] Infer the likely country of residence of a personal full name, or one surname. Assumes names as they are in the country of residence OR the country of origin.
  result = api_instance.country(personal_name_full)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling PersonalApi->country: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **personal_name_full** | **String**|  | 

### Return type

[**PersonalNameGeoOut**](PersonalNameGeoOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **country_batch**
> BatchPersonalNameGeoOut country_batch(opts)

[USES 10 UNITS] Infer the likely country of residence of up to 1000 personal full names, or surnames. Assumes names as they are in the country of residence OR the country of origin.

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

api_instance = NamSorClient::PersonalApi.new
opts = {
  batch_personal_name_in: NamSorClient::BatchPersonalNameIn.new # BatchPersonalNameIn | A list of personal names
}

begin
  #[USES 10 UNITS] Infer the likely country of residence of up to 1000 personal full names, or surnames. Assumes names as they are in the country of residence OR the country of origin.
  result = api_instance.country_batch(opts)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling PersonalApi->country_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_personal_name_in** | [**BatchPersonalNameIn**](BatchPersonalNameIn.md)| A list of personal names | [optional] 

### Return type

[**BatchPersonalNameGeoOut**](BatchPersonalNameGeoOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **diaspora**
> FirstLastNameDiasporaedOut diaspora(country_iso2, first_name, last_name)

[USES 20 UNITS] Infer the likely ethnicity/diaspora of a personal name, given a country of residence ISO2 code (ex. US, CA, AU, NZ etc.)

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

api_instance = NamSorClient::PersonalApi.new
country_iso2 = 'country_iso2_example' # String | 
first_name = 'first_name_example' # String | 
last_name = 'last_name_example' # String | 

begin
  #[USES 20 UNITS] Infer the likely ethnicity/diaspora of a personal name, given a country of residence ISO2 code (ex. US, CA, AU, NZ etc.)
  result = api_instance.diaspora(country_iso2, first_name, last_name)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling PersonalApi->diaspora: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_iso2** | **String**|  | 
 **first_name** | **String**|  | 
 **last_name** | **String**|  | 

### Return type

[**FirstLastNameDiasporaedOut**](FirstLastNameDiasporaedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **diaspora_batch**
> BatchFirstLastNameDiasporaedOut diaspora_batch(opts)

[USES 20 UNITS] Infer the likely ethnicity/diaspora of up to 1000 personal names, given a country of residence ISO2 code (ex. US, CA, AU, NZ etc.)

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

api_instance = NamSorClient::PersonalApi.new
opts = {
  batch_first_last_name_geo_in: NamSorClient::BatchFirstLastNameGeoIn.new # BatchFirstLastNameGeoIn | A list of personal names
}

begin
  #[USES 20 UNITS] Infer the likely ethnicity/diaspora of up to 1000 personal names, given a country of residence ISO2 code (ex. US, CA, AU, NZ etc.)
  result = api_instance.diaspora_batch(opts)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling PersonalApi->diaspora_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_first_last_name_geo_in** | [**BatchFirstLastNameGeoIn**](BatchFirstLastNameGeoIn.md)| A list of personal names | [optional] 

### Return type

[**BatchFirstLastNameDiasporaedOut**](BatchFirstLastNameDiasporaedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **gender**
> FirstLastNameGenderedOut gender(first_name, last_name)

Infer the likely gender of a name.

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

api_instance = NamSorClient::PersonalApi.new
first_name = 'first_name_example' # String | 
last_name = 'last_name_example' # String | 

begin
  #Infer the likely gender of a name.
  result = api_instance.gender(first_name, last_name)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling PersonalApi->gender: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **first_name** | **String**|  | 
 **last_name** | **String**|  | 

### Return type

[**FirstLastNameGenderedOut**](FirstLastNameGenderedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **gender_batch**
> BatchFirstLastNameGenderedOut gender_batch(opts)

Infer the likely gender of up to 1000 names, detecting automatically the cultural context.

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

api_instance = NamSorClient::PersonalApi.new
opts = {
  batch_first_last_name_in: NamSorClient::BatchFirstLastNameIn.new # BatchFirstLastNameIn | A list of personal names
}

begin
  #Infer the likely gender of up to 1000 names, detecting automatically the cultural context.
  result = api_instance.gender_batch(opts)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling PersonalApi->gender_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_first_last_name_in** | [**BatchFirstLastNameIn**](BatchFirstLastNameIn.md)| A list of personal names | [optional] 

### Return type

[**BatchFirstLastNameGenderedOut**](BatchFirstLastNameGenderedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **gender_full**
> FirstLastNameGenderedOut gender_full(full_name)

Infer the likely gender of a full name, ex. John H. Smith

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

api_instance = NamSorClient::PersonalApi.new
full_name = 'full_name_example' # String | 

begin
  #Infer the likely gender of a full name, ex. John H. Smith
  result = api_instance.gender_full(full_name)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling PersonalApi->gender_full: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **full_name** | **String**|  | 

### Return type

[**FirstLastNameGenderedOut**](FirstLastNameGenderedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **gender_full_batch**
> BatchPersonalNameGenderedOut gender_full_batch(opts)

Infer the likely gender of up to 1000 full names, detecting automatically the cultural context.

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

api_instance = NamSorClient::PersonalApi.new
opts = {
  batch_personal_name_in: NamSorClient::BatchPersonalNameIn.new # BatchPersonalNameIn | A list of personal names
}

begin
  #Infer the likely gender of up to 1000 full names, detecting automatically the cultural context.
  result = api_instance.gender_full_batch(opts)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling PersonalApi->gender_full_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_personal_name_in** | [**BatchPersonalNameIn**](BatchPersonalNameIn.md)| A list of personal names | [optional] 

### Return type

[**BatchPersonalNameGenderedOut**](BatchPersonalNameGenderedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **gender_full_geo**
> FirstLastNameGenderedOut gender_full_geo(full_name, country_iso2)

Infer the likely gender of a full name, given a local context (ISO2 country code).

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

api_instance = NamSorClient::PersonalApi.new
full_name = 'full_name_example' # String | 
country_iso2 = 'country_iso2_example' # String | 

begin
  #Infer the likely gender of a full name, given a local context (ISO2 country code).
  result = api_instance.gender_full_geo(full_name, country_iso2)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling PersonalApi->gender_full_geo: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **full_name** | **String**|  | 
 **country_iso2** | **String**|  | 

### Return type

[**FirstLastNameGenderedOut**](FirstLastNameGenderedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **gender_full_geo_batch**
> BatchPersonalNameGenderedOut gender_full_geo_batch(opts)

Infer the likely gender of up to 1000 full names, with a given cultural context (country ISO2 code).

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

api_instance = NamSorClient::PersonalApi.new
opts = {
  batch_personal_name_geo_in: NamSorClient::BatchPersonalNameGeoIn.new # BatchPersonalNameGeoIn | A list of personal names, with a country ISO2 code
}

begin
  #Infer the likely gender of up to 1000 full names, with a given cultural context (country ISO2 code).
  result = api_instance.gender_full_geo_batch(opts)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling PersonalApi->gender_full_geo_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_personal_name_geo_in** | [**BatchPersonalNameGeoIn**](BatchPersonalNameGeoIn.md)| A list of personal names, with a country ISO2 code | [optional] 

### Return type

[**BatchPersonalNameGenderedOut**](BatchPersonalNameGenderedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **gender_geo**
> FirstLastNameGenderedOut gender_geo(first_name, last_name, country_iso2)

Infer the likely gender of a name, given a local context (ISO2 country code).

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

api_instance = NamSorClient::PersonalApi.new
first_name = 'first_name_example' # String | 
last_name = 'last_name_example' # String | 
country_iso2 = 'country_iso2_example' # String | 

begin
  #Infer the likely gender of a name, given a local context (ISO2 country code).
  result = api_instance.gender_geo(first_name, last_name, country_iso2)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling PersonalApi->gender_geo: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **first_name** | **String**|  | 
 **last_name** | **String**|  | 
 **country_iso2** | **String**|  | 

### Return type

[**FirstLastNameGenderedOut**](FirstLastNameGenderedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **gender_geo_batch**
> BatchFirstLastNameGenderedOut gender_geo_batch(opts)

Infer the likely gender of up to 1000 names, each given a local context (ISO2 country code).

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

api_instance = NamSorClient::PersonalApi.new
opts = {
  batch_first_last_name_geo_in: NamSorClient::BatchFirstLastNameGeoIn.new # BatchFirstLastNameGeoIn | A list of names, with country code.
}

begin
  #Infer the likely gender of up to 1000 names, each given a local context (ISO2 country code).
  result = api_instance.gender_geo_batch(opts)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling PersonalApi->gender_geo_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_first_last_name_geo_in** | [**BatchFirstLastNameGeoIn**](BatchFirstLastNameGeoIn.md)| A list of names, with country code. | [optional] 

### Return type

[**BatchFirstLastNameGenderedOut**](BatchFirstLastNameGenderedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **origin**
> FirstLastNameOriginedOut origin(first_name, last_name)

[USES 10 UNITS] Infer the likely country of origin of a personal name. Assumes names as they are in the country of origin. For US, CA, AU, NZ and other melting-pots : use 'diaspora' instead.

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

api_instance = NamSorClient::PersonalApi.new
first_name = 'first_name_example' # String | 
last_name = 'last_name_example' # String | 

begin
  #[USES 10 UNITS] Infer the likely country of origin of a personal name. Assumes names as they are in the country of origin. For US, CA, AU, NZ and other melting-pots : use 'diaspora' instead.
  result = api_instance.origin(first_name, last_name)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling PersonalApi->origin: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **first_name** | **String**|  | 
 **last_name** | **String**|  | 

### Return type

[**FirstLastNameOriginedOut**](FirstLastNameOriginedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **origin_batch**
> BatchFirstLastNameOriginedOut origin_batch(opts)

[USES 10 UNITS] Infer the likely country of origin of up to 1000 names, detecting automatically the cultural context.

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

api_instance = NamSorClient::PersonalApi.new
opts = {
  batch_first_last_name_in: NamSorClient::BatchFirstLastNameIn.new # BatchFirstLastNameIn | A list of personal names
}

begin
  #[USES 10 UNITS] Infer the likely country of origin of up to 1000 names, detecting automatically the cultural context.
  result = api_instance.origin_batch(opts)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling PersonalApi->origin_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_first_last_name_in** | [**BatchFirstLastNameIn**](BatchFirstLastNameIn.md)| A list of personal names | [optional] 

### Return type

[**BatchFirstLastNameOriginedOut**](BatchFirstLastNameOriginedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **parse_name**
> PersonalNameParsedOut parse_name(name_full)

Infer the likely first/last name structure of a name, ex. John Smith or SMITH, John or SMITH; John. 

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

api_instance = NamSorClient::PersonalApi.new
name_full = 'name_full_example' # String | 

begin
  #Infer the likely first/last name structure of a name, ex. John Smith or SMITH, John or SMITH; John. 
  result = api_instance.parse_name(name_full)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling PersonalApi->parse_name: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name_full** | **String**|  | 

### Return type

[**PersonalNameParsedOut**](PersonalNameParsedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **parse_name_batch**
> BatchPersonalNameParsedOut parse_name_batch(opts)

Infer the likely first/last name structure of a name, ex. John Smith or SMITH, John or SMITH; John.

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

api_instance = NamSorClient::PersonalApi.new
opts = {
  batch_personal_name_in: NamSorClient::BatchPersonalNameIn.new # BatchPersonalNameIn | A list of personal names
}

begin
  #Infer the likely first/last name structure of a name, ex. John Smith or SMITH, John or SMITH; John.
  result = api_instance.parse_name_batch(opts)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling PersonalApi->parse_name_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_personal_name_in** | [**BatchPersonalNameIn**](BatchPersonalNameIn.md)| A list of personal names | [optional] 

### Return type

[**BatchPersonalNameParsedOut**](BatchPersonalNameParsedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **parse_name_geo**
> PersonalNameParsedOut parse_name_geo(name_full, country_iso2)

Infer the likely first/last name structure of a name, ex. John Smith or SMITH, John or SMITH; John. For better accuracy, provide a geographic context.

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

api_instance = NamSorClient::PersonalApi.new
name_full = 'name_full_example' # String | 
country_iso2 = 'country_iso2_example' # String | 

begin
  #Infer the likely first/last name structure of a name, ex. John Smith or SMITH, John or SMITH; John. For better accuracy, provide a geographic context.
  result = api_instance.parse_name_geo(name_full, country_iso2)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling PersonalApi->parse_name_geo: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name_full** | **String**|  | 
 **country_iso2** | **String**|  | 

### Return type

[**PersonalNameParsedOut**](PersonalNameParsedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **parse_name_geo_batch**
> BatchPersonalNameParsedOut parse_name_geo_batch(opts)

Infer the likely first/last name structure of a name, ex. John Smith or SMITH, John or SMITH; John. Giving a local context improves precision. 

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

api_instance = NamSorClient::PersonalApi.new
opts = {
  batch_personal_name_geo_in: NamSorClient::BatchPersonalNameGeoIn.new # BatchPersonalNameGeoIn | A list of personal names
}

begin
  #Infer the likely first/last name structure of a name, ex. John Smith or SMITH, John or SMITH; John. Giving a local context improves precision. 
  result = api_instance.parse_name_geo_batch(opts)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling PersonalApi->parse_name_geo_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_personal_name_geo_in** | [**BatchPersonalNameGeoIn**](BatchPersonalNameGeoIn.md)| A list of personal names | [optional] 

### Return type

[**BatchPersonalNameParsedOut**](BatchPersonalNameParsedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **parsed_gender_batch**
> BatchFirstLastNameGenderedOut parsed_gender_batch(opts)

Infer the likely gender of up to 1000 fully parsed names, detecting automatically the cultural context.

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

api_instance = NamSorClient::PersonalApi.new
opts = {
  batch_parsed_full_name_in: NamSorClient::BatchParsedFullNameIn.new # BatchParsedFullNameIn | A list of personal names
}

begin
  #Infer the likely gender of up to 1000 fully parsed names, detecting automatically the cultural context.
  result = api_instance.parsed_gender_batch(opts)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling PersonalApi->parsed_gender_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_parsed_full_name_in** | [**BatchParsedFullNameIn**](BatchParsedFullNameIn.md)| A list of personal names | [optional] 

### Return type

[**BatchFirstLastNameGenderedOut**](BatchFirstLastNameGenderedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **parsed_gender_geo_batch**
> BatchFirstLastNameGenderedOut parsed_gender_geo_batch(opts)

Infer the likely gender of up to 1000 fully parsed names, detecting automatically the cultural context.

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

api_instance = NamSorClient::PersonalApi.new
opts = {
  batch_parsed_full_name_geo_in: NamSorClient::BatchParsedFullNameGeoIn.new # BatchParsedFullNameGeoIn | A list of personal names
}

begin
  #Infer the likely gender of up to 1000 fully parsed names, detecting automatically the cultural context.
  result = api_instance.parsed_gender_geo_batch(opts)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling PersonalApi->parsed_gender_geo_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_parsed_full_name_geo_in** | [**BatchParsedFullNameGeoIn**](BatchParsedFullNameGeoIn.md)| A list of personal names | [optional] 

### Return type

[**BatchFirstLastNameGenderedOut**](BatchFirstLastNameGenderedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **us_race_ethnicity**
> FirstLastNameUSRaceEthnicityOut us_race_ethnicity(first_name, last_name)

[USES 10 UNITS] Infer a US resident's likely race/ethnicity according to US Census taxonomy W_NL (white, non latino), HL (hispano latino),  A (asian, non latino), B_NL (black, non latino).

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

api_instance = NamSorClient::PersonalApi.new
first_name = 'first_name_example' # String | 
last_name = 'last_name_example' # String | 

begin
  #[USES 10 UNITS] Infer a US resident's likely race/ethnicity according to US Census taxonomy W_NL (white, non latino), HL (hispano latino),  A (asian, non latino), B_NL (black, non latino).
  result = api_instance.us_race_ethnicity(first_name, last_name)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling PersonalApi->us_race_ethnicity: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **first_name** | **String**|  | 
 **last_name** | **String**|  | 

### Return type

[**FirstLastNameUSRaceEthnicityOut**](FirstLastNameUSRaceEthnicityOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **us_race_ethnicity_batch**
> BatchFirstLastNameUSRaceEthnicityOut us_race_ethnicity_batch(opts)

[USES 10 UNITS] Infer up-to 1000 US resident's likely race/ethnicity according to US Census taxonomy.

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

api_instance = NamSorClient::PersonalApi.new
opts = {
  batch_first_last_name_geo_in: NamSorClient::BatchFirstLastNameGeoIn.new # BatchFirstLastNameGeoIn | A list of personal names
}

begin
  #[USES 10 UNITS] Infer up-to 1000 US resident's likely race/ethnicity according to US Census taxonomy.
  result = api_instance.us_race_ethnicity_batch(opts)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling PersonalApi->us_race_ethnicity_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_first_last_name_geo_in** | [**BatchFirstLastNameGeoIn**](BatchFirstLastNameGeoIn.md)| A list of personal names | [optional] 

### Return type

[**BatchFirstLastNameUSRaceEthnicityOut**](BatchFirstLastNameUSRaceEthnicityOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **us_race_ethnicity_zip5**
> FirstLastNameUSRaceEthnicityOut us_race_ethnicity_zip5(first_name, last_name, zip5_code)

[USES 10 UNITS] Infer a US resident's likely race/ethnicity according to US Census taxonomy, using (optional) ZIP5 code info. Output is W_NL (white, non latino), HL (hispano latino),  A (asian, non latino), B_NL (black, non latino).

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

api_instance = NamSorClient::PersonalApi.new
first_name = 'first_name_example' # String | 
last_name = 'last_name_example' # String | 
zip5_code = 'zip5_code_example' # String | 

begin
  #[USES 10 UNITS] Infer a US resident's likely race/ethnicity according to US Census taxonomy, using (optional) ZIP5 code info. Output is W_NL (white, non latino), HL (hispano latino),  A (asian, non latino), B_NL (black, non latino).
  result = api_instance.us_race_ethnicity_zip5(first_name, last_name, zip5_code)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling PersonalApi->us_race_ethnicity_zip5: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **first_name** | **String**|  | 
 **last_name** | **String**|  | 
 **zip5_code** | **String**|  | 

### Return type

[**FirstLastNameUSRaceEthnicityOut**](FirstLastNameUSRaceEthnicityOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **us_zip_race_ethnicity_batch**
> BatchFirstLastNameUSRaceEthnicityOut us_zip_race_ethnicity_batch(opts)

[USES 10 UNITS] Infer up-to 1000 US resident's likely race/ethnicity according to US Census taxonomy, with (optional) ZIP code.

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

api_instance = NamSorClient::PersonalApi.new
opts = {
  batch_first_last_name_geo_zipped_in: NamSorClient::BatchFirstLastNameGeoZippedIn.new # BatchFirstLastNameGeoZippedIn | A list of personal names
}

begin
  #[USES 10 UNITS] Infer up-to 1000 US resident's likely race/ethnicity according to US Census taxonomy, with (optional) ZIP code.
  result = api_instance.us_zip_race_ethnicity_batch(opts)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling PersonalApi->us_zip_race_ethnicity_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_first_last_name_geo_zipped_in** | [**BatchFirstLastNameGeoZippedIn**](BatchFirstLastNameGeoZippedIn.md)| A list of personal names | [optional] 

### Return type

[**BatchFirstLastNameUSRaceEthnicityOut**](BatchFirstLastNameUSRaceEthnicityOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



