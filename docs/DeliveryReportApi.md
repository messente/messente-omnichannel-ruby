# OpenapiClient::DeliveryReportApi

All URIs are relative to *https://api.messente.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**retrieve_delivery_report**](DeliveryReportApi.md#retrieve_delivery_report) | **GET** /omnimessage/{omnimessage_id}/status | Retrieves the delivery report for the Omnimessage


# **retrieve_delivery_report**
> DeliveryReportResponse retrieve_delivery_report(omnimessage_id)

Retrieves the delivery report for the Omnimessage

### Example
```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = OpenapiClient::DeliveryReportApi.new
omnimessage_id = 'omnimessage_id_example' # String | UUID of the Omnimessage to for which the delivery report is to be retrieved

begin
  #Retrieves the delivery report for the Omnimessage
  result = api_instance.retrieve_delivery_report(omnimessage_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DeliveryReportApi->retrieve_delivery_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **omnimessage_id** | [**String**](.md)| UUID of the Omnimessage to for which the delivery report is to be retrieved | 

### Return type

[**DeliveryReportResponse**](DeliveryReportResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*


