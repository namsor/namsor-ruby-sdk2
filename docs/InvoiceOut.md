# NamSorClient::InvoiceOut

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**items** | [**Array&lt;InvoiceItemOut&gt;**](InvoiceItemOut.md) |  | [optional] 
**user_id** | **String** |  | [optional] 
**invoice_id** | **String** |  | [optional] 
**is_striped** | **BOOLEAN** |  | [optional] 
**stripe_customer_id** | **String** |  | [optional] 
**amount_due** | **Integer** |  | [optional] 
**amount_paid** | **Integer** |  | [optional] 
**amount_remaining** | **Integer** |  | [optional] 
**attempted** | **BOOLEAN** |  | [optional] 
**currency** | **String** |  | [optional] 
**invoice_date** | **DateTime** |  | [optional] 
**due_date** | **DateTime** |  | [optional] 
**description** | **String** |  | [optional] 
**invoice_pdf** | **String** |  | [optional] 
**period_start** | **DateTime** |  | [optional] 
**period_end** | **DateTime** |  | [optional] 
**receipt_number** | **String** |  | [optional] 
**invoice_status** | **String** |  | [optional] 
**sub_total** | **Integer** |  | [optional] 
**tax** | **Integer** |  | [optional] 
**tax_percent** | **Integer** |  | [optional] 
**total** | **Integer** |  | [optional] 

## Code Sample

```ruby
require 'NamSorClient'

instance = NamSorClient::InvoiceOut.new(items: null,
                                 user_id: null,
                                 invoice_id: null,
                                 is_striped: null,
                                 stripe_customer_id: null,
                                 amount_due: null,
                                 amount_paid: null,
                                 amount_remaining: null,
                                 attempted: null,
                                 currency: null,
                                 invoice_date: null,
                                 due_date: null,
                                 description: null,
                                 invoice_pdf: null,
                                 period_start: null,
                                 period_end: null,
                                 receipt_number: null,
                                 invoice_status: null,
                                 sub_total: null,
                                 tax: null,
                                 tax_percent: null,
                                 total: null)
```


