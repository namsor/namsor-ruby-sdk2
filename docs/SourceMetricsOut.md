# NamSorClient::SourceMetricsOut

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**classifier_name** | **String** |  | [optional] 
**source** | [**APIKeyOut**](APIKeyOut.md) |  | [optional] 
**ai_estimate_total** | **Integer** |  | [optional] 
**ai_estimate_precision** | **Float** |  | [optional] 
**ai_estimate_recall** | **Float** |  | [optional] 
**metric_time_stamp** | **Integer** |  | [optional] 
**ai_start_time** | **Integer** |  | [optional] 
**ai_learn_total** | **Integer** |  | [optional] 
**snapshot_date** | **Integer** |  | [optional] 

## Code Sample

```ruby
require 'NamSorClient'

instance = NamSorClient::SourceMetricsOut.new(classifier_name: null,
                                 source: null,
                                 ai_estimate_total: null,
                                 ai_estimate_precision: null,
                                 ai_estimate_recall: null,
                                 metric_time_stamp: null,
                                 ai_start_time: null,
                                 ai_learn_total: null,
                                 snapshot_date: null)
```


