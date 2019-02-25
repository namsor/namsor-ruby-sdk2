# NamSorClient::StripeCustomerOut

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**stripe_customer_id** | **String** |  | [optional] 
**source_country** | **String** |  | [optional] 
**source_currency** | **String** |  | [optional] 
**striped_cards** | [**Array&lt;StripeCardOut&gt;**](StripeCardOut.md) |  | [optional] 

## Code Sample

```ruby
require 'NamSorClient'

instance = NamSorClient::StripeCustomerOut.new(stripe_customer_id: null,
                                 source_country: null,
                                 source_currency: null,
                                 striped_cards: null)
```


