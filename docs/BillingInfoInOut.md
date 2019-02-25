# NamSorClient::BillingInfoInOut

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billing_email** | **String** |  | [optional] 
**preferred_currency** | **String** |  | [optional] 
**customer_name** | **String** |  | [optional] 
**customer_phone** | **String** |  | [optional] 
**address_line1** | **String** |  | [optional] 
**address_line2** | **String** |  | [optional] 
**address_city** | **String** |  | [optional] 
**address_postal_code** | **String** |  | [optional] 
**address_state** | **String** |  | [optional] 
**address_country** | **String** |  | [optional] 
**vat_id** | **String** |  | [optional] 

## Code Sample

```ruby
require 'NamSorClient'

instance = NamSorClient::BillingInfoInOut.new(billing_email: null,
                                 preferred_currency: null,
                                 customer_name: null,
                                 customer_phone: null,
                                 address_line1: null,
                                 address_line2: null,
                                 address_city: null,
                                 address_postal_code: null,
                                 address_state: null,
                                 address_country: null,
                                 vat_id: null)
```


