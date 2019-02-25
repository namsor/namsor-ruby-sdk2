# NamSorClient::ChineseApi

All URIs are relative to *https://v2.namsor.com/NamSorAPIv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chinese_name_candidates**](ChineseApi.md#chinese_name_candidates) | **GET** /api2/json/chineseNameCandidates/{chineseSurnameLatin}/{chineseGivenNameLatin} | Identify Chinese name candidates, based on the romanized name.
[**chinese_name_candidates_batch**](ChineseApi.md#chinese_name_candidates_batch) | **POST** /api2/json/chineseNameCandidatesBatch | Identify Chinese name candidates, based on the romanized name (firstName &#x3D; chineseGivenName; lastName&#x3D;chineseSurname).
[**chinese_name_candidates_gender_batch**](ChineseApi.md#chinese_name_candidates_gender_batch) | **POST** /api2/json/chineseNameCandidatesGenderBatch | Identify Chinese name candidates, based on the romanized name (firstName &#x3D; chineseGivenName; lastName&#x3D;chineseSurname).
[**chinese_name_gender_candidates**](ChineseApi.md#chinese_name_gender_candidates) | **GET** /api2/json/chineseNameGenderCandidates/{chineseSurnameLatin}/{chineseGivenNameLatin}/{knownGender} | Identify Chinese name candidates, based on the romanized name - having a known gender (&#39;male&#39; or &#39;female&#39;)


# **chinese_name_candidates**
> RomanizedNameOut chinese_name_candidates(chinese_surname_latin, chinese_given_name_latin)

Identify Chinese name candidates, based on the romanized name.

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

api_instance = NamSorClient::ChineseApi.new
chinese_surname_latin = 'chinese_surname_latin_example' # String | 
chinese_given_name_latin = 'chinese_given_name_latin_example' # String | 

begin
  #Identify Chinese name candidates, based on the romanized name.
  result = api_instance.chinese_name_candidates(chinese_surname_latin, chinese_given_name_latin)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling ChineseApi->chinese_name_candidates: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chinese_surname_latin** | **String**|  | 
 **chinese_given_name_latin** | **String**|  | 

### Return type

[**RomanizedNameOut**](RomanizedNameOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **chinese_name_candidates_batch**
> BatchNameMatchCandidatesOut chinese_name_candidates_batch(opts)

Identify Chinese name candidates, based on the romanized name (firstName = chineseGivenName; lastName=chineseSurname).

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

api_instance = NamSorClient::ChineseApi.new
opts = {
  batch_first_last_name_in: NamSorClient::BatchFirstLastNameIn.new # BatchFirstLastNameIn | A list of personal Chinese names in LATIN, firstName = chineseGivenName; lastName=chineseSurname
}

begin
  #Identify Chinese name candidates, based on the romanized name (firstName = chineseGivenName; lastName=chineseSurname).
  result = api_instance.chinese_name_candidates_batch(opts)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling ChineseApi->chinese_name_candidates_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_first_last_name_in** | [**BatchFirstLastNameIn**](BatchFirstLastNameIn.md)| A list of personal Chinese names in LATIN, firstName &#x3D; chineseGivenName; lastName&#x3D;chineseSurname | [optional] 

### Return type

[**BatchNameMatchCandidatesOut**](BatchNameMatchCandidatesOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **chinese_name_candidates_gender_batch**
> BatchNameMatchCandidatesOut chinese_name_candidates_gender_batch(opts)

Identify Chinese name candidates, based on the romanized name (firstName = chineseGivenName; lastName=chineseSurname).

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

api_instance = NamSorClient::ChineseApi.new
opts = {
  batch_first_last_name_in: NamSorClient::BatchFirstLastNameIn.new # BatchFirstLastNameIn | A list of personal Chinese names in LATIN, firstName = chineseGivenName; lastName=chineseSurname
}

begin
  #Identify Chinese name candidates, based on the romanized name (firstName = chineseGivenName; lastName=chineseSurname).
  result = api_instance.chinese_name_candidates_gender_batch(opts)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling ChineseApi->chinese_name_candidates_gender_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_first_last_name_in** | [**BatchFirstLastNameIn**](BatchFirstLastNameIn.md)| A list of personal Chinese names in LATIN, firstName &#x3D; chineseGivenName; lastName&#x3D;chineseSurname | [optional] 

### Return type

[**BatchNameMatchCandidatesOut**](BatchNameMatchCandidatesOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **chinese_name_gender_candidates**
> RomanizedNameOut chinese_name_gender_candidates(chinese_surname_latin, chinese_given_name_latin, known_gender)

Identify Chinese name candidates, based on the romanized name - having a known gender ('male' or 'female')

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

api_instance = NamSorClient::ChineseApi.new
chinese_surname_latin = 'chinese_surname_latin_example' # String | 
chinese_given_name_latin = 'chinese_given_name_latin_example' # String | 
known_gender = 'known_gender_example' # String | 

begin
  #Identify Chinese name candidates, based on the romanized name - having a known gender ('male' or 'female')
  result = api_instance.chinese_name_gender_candidates(chinese_surname_latin, chinese_given_name_latin, known_gender)
  p result
rescue NamSorClient::ApiError => e
  puts "Exception when calling ChineseApi->chinese_name_gender_candidates: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chinese_surname_latin** | **String**|  | 
 **chinese_given_name_latin** | **String**|  | 
 **known_gender** | **String**|  | 

### Return type

[**RomanizedNameOut**](RomanizedNameOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



