# NamSorClient::APICounterV2Out

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**api_key** | [**APIKeyOut**](APIKeyOut.md) |  | [optional] 
**api_service** | **String** |  | [optional] 
**created_date_time** | **Integer** |  | [optional] 
**total_usage** | **Integer** |  | [optional] 
**last_flushed_date_time** | **Integer** |  | [optional] 
**last_used_date_time** | **Integer** |  | [optional] 
**service_features_usage** | **Hash&lt;String, Integer&gt;** |  | [optional] 

## Code Sample

```ruby
require 'NamSorClient'

instance = NamSorClient::APICounterV2Out.new(api_key: null,
                                 api_service: null,
                                 created_date_time: null,
                                 total_usage: null,
                                 last_flushed_date_time: null,
                                 last_used_date_time: null,
                                 service_features_usage: null)
```


