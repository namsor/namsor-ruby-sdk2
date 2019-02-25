# NamSorClient::ClassifierMetricsOut

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**learn_queue_size** | **Integer** |  | [optional] 
**buffer_size** | **Integer** |  | [optional] 
**pre_classify_queue_size** | **Integer** |  | [optional] 
**fact_keys_size** | **Integer** |  | [optional] 
**facts_learned** | **Integer** |  | [optional] 
**classify_durations_current** | **Float** |  | [optional] 
**classify_durations_summary** | **Float** |  | [optional] 
**learn_durations_current** | **Float** |  | [optional] 
**learn_durations_summary** | **Float** |  | [optional] 
**classifier_name** | **String** |  | [optional] 
**features_size** | **Integer** |  | [optional] 
**ai_vetted_estimate_total** | **Integer** |  | [optional] 
**ai_vetted_estimate_precision** | **Float** |  | [optional] 
**ai_vetted_estimate_recall** | **Float** |  | [optional] 
**ai_vetted_learn_total** | **Integer** |  | [optional] 
**ai_non_vetted_estimate_total** | **Integer** |  | [optional] 
**ai_non_vetted_estimate_precision** | **Float** |  | [optional] 
**ai_non_vetted_estimate_recall** | **Float** |  | [optional] 
**ai_non_vetted_learn_total** | **Integer** |  | [optional] 
**metric_time_stamp** | **Integer** |  | [optional] 
**ai_start_time** | **Integer** |  | [optional] 
**ai_vetted_expected_class_metrics** | [**Array&lt;ExpectedClassMetricsOut&gt;**](ExpectedClassMetricsOut.md) |  | [optional] 
**ai_non_vetted_expected_class_metrics** | [**Array&lt;ExpectedClassMetricsOut&gt;**](ExpectedClassMetricsOut.md) |  | [optional] 

## Code Sample

```ruby
require 'NamSorClient'

instance = NamSorClient::ClassifierMetricsOut.new(learn_queue_size: null,
                                 buffer_size: null,
                                 pre_classify_queue_size: null,
                                 fact_keys_size: null,
                                 facts_learned: null,
                                 classify_durations_current: null,
                                 classify_durations_summary: null,
                                 learn_durations_current: null,
                                 learn_durations_summary: null,
                                 classifier_name: null,
                                 features_size: null,
                                 ai_vetted_estimate_total: null,
                                 ai_vetted_estimate_precision: null,
                                 ai_vetted_estimate_recall: null,
                                 ai_vetted_learn_total: null,
                                 ai_non_vetted_estimate_total: null,
                                 ai_non_vetted_estimate_precision: null,
                                 ai_non_vetted_estimate_recall: null,
                                 ai_non_vetted_learn_total: null,
                                 metric_time_stamp: null,
                                 ai_start_time: null,
                                 ai_vetted_expected_class_metrics: null,
                                 ai_non_vetted_expected_class_metrics: null)
```


