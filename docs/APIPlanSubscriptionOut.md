# NamSorClient::APIPlanSubscriptionOut

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**api_key** | **String** |  | [optional] 
**plan_started** | **Integer** |  | [optional] 
**prior_plan_started** | **Integer** |  | [optional] 
**plan_ended** | **Integer** |  | [optional] 
**tax_rate** | **Float** |  | [optional] 
**plan_name** | **String** |  | [optional] 
**plan_base_fees_key** | **String** |  | [optional] 
**plan_status** | **String** |  | [optional] 
**plan_quota** | **Integer** |  | [optional] 
**price_usd** | **Float** |  | [optional] 
**price_overage_usd** | **Float** |  | [optional] 
**price** | **Float** |  | [optional] 
**price_overage** | **Float** |  | [optional] 
**currency** | **String** |  | [optional] 
**currency_factor** | **Float** |  | [optional] 
**stripe_customer_id** | **String** |  | [optional] 
**stripe_status** | **String** |  | [optional] 
**stripe_subscription** | **String** |  | [optional] 
**user_id** | **String** |  | [optional] 

## Code Sample

```ruby
require 'NamSorClient'

instance = NamSorClient::APIPlanSubscriptionOut.new(api_key: null,
                                 plan_started: null,
                                 prior_plan_started: null,
                                 plan_ended: null,
                                 tax_rate: null,
                                 plan_name: null,
                                 plan_base_fees_key: null,
                                 plan_status: null,
                                 plan_quota: null,
                                 price_usd: null,
                                 price_overage_usd: null,
                                 price: null,
                                 price_overage: null,
                                 currency: null,
                                 currency_factor: null,
                                 stripe_customer_id: null,
                                 stripe_status: null,
                                 stripe_subscription: null,
                                 user_id: null)
```


