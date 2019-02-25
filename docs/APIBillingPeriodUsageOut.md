# NamSorClient::APIBillingPeriodUsageOut

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**api_key** | **String** |  | [optional] 
**subscription_started** | **Integer** |  | [optional] 
**period_started** | **Integer** |  | [optional] 
**period_ended** | **Integer** |  | [optional] 
**stripe_current_period_end** | **Integer** |  | [optional] 
**stripe_current_period_start** | **Integer** |  | [optional] 
**billing_status** | **String** |  | [optional] 
**usage** | **Integer** |  | [optional] 
**soft_limit** | **Integer** |  | [optional] 
**hard_limit** | **Integer** |  | [optional] 

## Code Sample

```ruby
require 'NamSorClient'

instance = NamSorClient::APIBillingPeriodUsageOut.new(api_key: null,
                                 subscription_started: null,
                                 period_started: null,
                                 period_ended: null,
                                 stripe_current_period_end: null,
                                 stripe_current_period_start: null,
                                 billing_status: null,
                                 usage: null,
                                 soft_limit: null,
                                 hard_limit: null)
```


