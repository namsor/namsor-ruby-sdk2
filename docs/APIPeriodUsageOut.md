# NamSorClient::APIPeriodUsageOut

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subscription** | [**APIPlanSubscriptionOut**](APIPlanSubscriptionOut.md) |  | [optional] 
**billing_period** | [**APIBillingPeriodUsageOut**](APIBillingPeriodUsageOut.md) |  | [optional] 
**overage_excl_tax** | **Float** |  | [optional] 
**overage_incl_tax** | **Float** |  | [optional] 
**overage_currency** | **String** |  | [optional] 
**overage_quantity** | **Integer** |  | [optional] 

## Code Sample

```ruby
require 'NamSorClient'

instance = NamSorClient::APIPeriodUsageOut.new(subscription: null,
                                 billing_period: null,
                                 overage_excl_tax: null,
                                 overage_incl_tax: null,
                                 overage_currency: null,
                                 overage_quantity: null)
```


