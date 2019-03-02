# NamSorClient::PersonalNameParsedOut

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**name_parser_type** | **String** |  | [optional] 
**name_parser_type_alt** | **String** |  | [optional] 
**first_last_name** | [**FirstLastNameOut**](FirstLastNameOut.md) |  | [optional] 
**score** | **Float** |  | [optional] 

## Code Sample

```ruby
require 'NamSorClient'

instance = NamSorClient::PersonalNameParsedOut.new(id: null,
                                 name: null,
                                 name_parser_type: null,
                                 name_parser_type_alt: null,
                                 first_last_name: null,
                                 score: null)
```


