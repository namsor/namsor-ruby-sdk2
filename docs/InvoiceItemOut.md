# NamSorClient::InvoiceItemOut

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**item_id** | **String** |  | [optional] 
**amount** | **Integer** |  | [optional] 
**currency** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**quantity** | **Integer** |  | [optional] 
**subscription** | **String** |  | [optional] 
**subscription_item** | **String** |  | [optional] 
**invoice_item_type** | **String** |  | [optional] 
**plan_nickname** | **String** |  | [optional] 
**plan_desc** | **String** |  | [optional] 
**plan_name** | **String** |  | [optional] 

## Code Sample

```ruby
require 'NamSorClient'

instance = NamSorClient::InvoiceItemOut.new(item_id: null,
                                 amount: null,
                                 currency: null,
                                 description: null,
                                 quantity: null,
                                 subscription: null,
                                 subscription_item: null,
                                 invoice_item_type: null,
                                 plan_nickname: null,
                                 plan_desc: null,
                                 plan_name: null)
```


