# NamSorClient::APIUsageAggregatedOut

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**time_unit** | **String** |  | [optional] 
**period_start** | **Integer** |  | [optional] 
**period_end** | **Integer** |  | [optional] 
**total_usage** | **Integer** |  | [optional] 
**history_truncated** | **BOOLEAN** |  | [optional] 
**data** | **Array&lt;Array&lt;Integer&gt;&gt;** |  | [optional] 
**col_headers** | **Array&lt;String&gt;** |  | [optional] 
**row_headers** | **Array&lt;String&gt;** |  | [optional] 

## Code Sample

```ruby
require 'NamSorClient'

instance = NamSorClient::APIUsageAggregatedOut.new(time_unit: null,
                                 period_start: null,
                                 period_end: null,
                                 total_usage: null,
                                 history_truncated: null,
                                 data: null,
                                 col_headers: null,
                                 row_headers: null)
```


