# NamSorClient::UserInfoOut

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uid** | **String** |  | [optional] 
**email** | **String** |  | [optional] 
**phone_number** | **String** |  | [optional] 
**email_verified** | **BOOLEAN** |  | [optional] 
**display_name** | **String** |  | [optional] 
**photo_url** | **String** |  | [optional] 
**disabled** | **BOOLEAN** |  | [optional] 
**first_known_ip_address** | **String** |  | [optional] 
**provider_id** | **String** |  | [optional] 
**time_stamp** | **Integer** |  | [optional] 
**verify_token** | **String** |  | [optional] 
**api_key** | **String** |  | [optional] 
**stripe_perishable_key** | **String** |  | [optional] 
**stripe_customer_id** | **String** |  | [optional] 
**other_infos** | [**Array&lt;UserInfoOut&gt;**](UserInfoOut.md) |  | [optional] 

## Code Sample

```ruby
require 'NamSorClient'

instance = NamSorClient::UserInfoOut.new(uid: null,
                                 email: null,
                                 phone_number: null,
                                 email_verified: null,
                                 display_name: null,
                                 photo_url: null,
                                 disabled: null,
                                 first_known_ip_address: null,
                                 provider_id: null,
                                 time_stamp: null,
                                 verify_token: null,
                                 api_key: null,
                                 stripe_perishable_key: null,
                                 stripe_customer_id: null,
                                 other_infos: null)
```


