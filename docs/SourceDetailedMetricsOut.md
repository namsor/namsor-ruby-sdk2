# NamSorClient::SourceDetailedMetricsOut

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
**expected_class_metrics** | [**Array&lt;ExpectedClassMetricsOut&gt;**](ExpectedClassMetricsOut.md) |  | [optional] 

## Code Sample

```ruby
require 'NamSorClient'

instance = NamSorClient::SourceDetailedMetricsOut.new(classifier_name: null,
                                 source: null,
                                 ai_estimate_total: null,
                                 ai_estimate_precision: null,
                                 ai_estimate_recall: null,
                                 metric_time_stamp: null,
                                 ai_start_time: null,
                                 ai_learn_total: null,
                                 snapshot_date: null,
                                 expected_class_metrics: null)
```


