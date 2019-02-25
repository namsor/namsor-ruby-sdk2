# NamSorClient::StripeCardOut

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**default_card** | **BOOLEAN** |  | [optional] 
**source_id** | **String** |  | [optional] 
**exp_month** | **Integer** |  | [optional] 
**exp_year** | **Integer** |  | [optional] 
**last4** | **String** |  | [optional] 
**brand** | **String** |  | [optional] 

## Code Sample

```ruby
require 'NamSorClient'

instance = NamSorClient::StripeCardOut.new(default_card: null,
                                 source_id: null,
                                 exp_month: null,
                                 exp_year: null,
                                 last4: null,
                                 brand: null)
```


