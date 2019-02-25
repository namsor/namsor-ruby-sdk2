# NamSorClient::BillingHistoryOut

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**stripe_invoices** | [**Array&lt;InvoiceOut&gt;**](InvoiceOut.md) |  | [optional] 
**corporate_invoices** | [**Array&lt;InvoiceOut&gt;**](InvoiceOut.md) |  | [optional] 

## Code Sample

```ruby
require 'NamSorClient'

instance = NamSorClient::BillingHistoryOut.new(stripe_invoices: null,
                                 corporate_invoices: null)
```


