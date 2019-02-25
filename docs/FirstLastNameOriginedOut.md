# NamSorClient::FirstLastNameOriginedOut

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**first_name** | **String** |  | [optional] 
**last_name** | **String** |  | [optional] 
**country_origin** | **String** | Most likely country of Origin | [optional] 
**country_origin_alt** | **String** | Second best alternative : country of Origin | [optional] 
**score** | **Float** | Compatibility to NamSor_v1 Origin score value | [optional] 
**region_origin** | **String** | Most likely region of Origin (based on countryOrigin ISO2 code) | [optional] 
**top_region_origin** | **String** | Most likely region of Origin (based on countryOrigin ISO2 code) | [optional] 
**sub_region_origin** | **String** | Most likely region of Origin (based on countryOrigin ISO2 code) | [optional] 

## Code Sample

```ruby
require 'NamSorClient'

instance = NamSorClient::FirstLastNameOriginedOut.new(id: null,
                                 first_name: null,
                                 last_name: null,
                                 country_origin: null,
                                 country_origin_alt: null,
                                 score: null,
                                 region_origin: null,
                                 top_region_origin: null,
                                 sub_region_origin: null)
```


