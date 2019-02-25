# NamSorClient::FirstLastNameGenderedOut

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**first_name** | **String** |  | [optional] 
**last_name** | **String** |  | [optional] 
**likely_gender** | **String** | Most likely gender | [optional] 
**gender_scale** | **Float** | Compatibility to NamSor_v1 Gender Scale M[-1..U..+1]F value | [optional] 
**score** | **Float** |  | [optional] 

## Code Sample

```ruby
require 'NamSorClient'

instance = NamSorClient::FirstLastNameGenderedOut.new(id: null,
                                 first_name: null,
                                 last_name: null,
                                 likely_gender: null,
                                 gender_scale: null,
                                 score: null)
```


