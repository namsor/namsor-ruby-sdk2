# NamSorClient::APIPlansOut

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**usage_ratio_for_dupplicates** | **Integer** |  | [optional] 
**currency_iso3** | **String** |  | [optional] 
**currency_symbol** | **String** |  | [optional] 
**plans** | [**Array&lt;APIPlanOut&gt;**](APIPlanOut.md) |  | [optional] 

## Code Sample

```ruby
require 'NamSorClient'

instance = NamSorClient::APIPlansOut.new(usage_ratio_for_dupplicates: null,
                                 currency_iso3: null,
                                 currency_symbol: null,
                                 plans: null)
```


