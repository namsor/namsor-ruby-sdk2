# NamSorClient::SystemMetricsOut

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**classifier_metrics** | [**Array&lt;ClassifierMetricsOut&gt;**](ClassifierMetricsOut.md) |  | [optional] 
**source_metrics** | [**Array&lt;SourceMetricsOut&gt;**](SourceMetricsOut.md) |  | [optional] 
**total_mem** | **Integer** |  | [optional] 
**free_mem** | **Integer** |  | [optional] 
**max_mem** | **Integer** |  | [optional] 

## Code Sample

```ruby
require 'NamSorClient'

instance = NamSorClient::SystemMetricsOut.new(classifier_metrics: null,
                                 source_metrics: null,
                                 total_mem: null,
                                 free_mem: null,
                                 max_mem: null)
```


