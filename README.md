# openapi_client

OpenapiClient - the Ruby gem for the Omnichannel API

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build openapi_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./openapi_client-1.0.0.gem
```
(for development, run `gem install --dev ./openapi_client-1.0.0.gem` to install the development dependencies)

Finally add this to the Gemfile:

    gem 'openapi_client', '~> 1.0.0'

### Install from Git

    gem 'openapi_client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'


## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'openapi_client'

# Setup authorization
OpenapiClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = '<MESSENTE_API_USERNAME>'
  config.password = '<MESSENTE_API_PASSWORD>'
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

## Documentation for API Endpoints

All URIs are relative to *https://api.messente.com/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OpenapiClient::DeliveryReportApi* | [**retrieve_delivery_report**](docs/DeliveryReportApi.md#retrieve_delivery_report) | **GET** /omnimessage/{omnimessage_id}/status | Retrieves the delivery report for the Omnimessage
*OpenapiClient::OmnimessageApi* | [**cancel_scheduled_message**](docs/OmnimessageApi.md#cancel_scheduled_message) | **DELETE** /omnimessage/{omnimessage_id} | Cancels a scheduled Omnimessage
*OpenapiClient::OmnimessageApi* | [**send_omnimessage**](docs/OmnimessageApi.md#send_omnimessage) | **POST** /omnimessage | Sends an Omnimessage


## Documentation for Models

 - [OpenapiClient::Channel](docs/Channel.md)
 - [OpenapiClient::DeliveryReportResponse](docs/DeliveryReportResponse.md)
 - [OpenapiClient::DeliveryResult](docs/DeliveryResult.md)
 - [OpenapiClient::Err](docs/Err.md)
 - [OpenapiClient::ErrorItem](docs/ErrorItem.md)
 - [OpenapiClient::ErrorResponse](docs/ErrorResponse.md)
 - [OpenapiClient::Message](docs/Message.md)
 - [OpenapiClient::MessageResult](docs/MessageResult.md)
 - [OpenapiClient::OmniMessageCreateSuccessResponse](docs/OmniMessageCreateSuccessResponse.md)
 - [OpenapiClient::Omnimessage](docs/Omnimessage.md)
 - [OpenapiClient::ResponseErrorCode](docs/ResponseErrorCode.md)
 - [OpenapiClient::ResponseErrorTitle](docs/ResponseErrorTitle.md)
 - [OpenapiClient::SMS](docs/SMS.md)
 - [OpenapiClient::Status](docs/Status.md)
 - [OpenapiClient::Viber](docs/Viber.md)
 - [OpenapiClient::WhatsApp](docs/WhatsApp.md)
 - [OpenapiClient::WhatsAppAudio](docs/WhatsAppAudio.md)
 - [OpenapiClient::WhatsAppDocument](docs/WhatsAppDocument.md)
 - [OpenapiClient::WhatsAppImage](docs/WhatsAppImage.md)
 - [OpenapiClient::WhatsAppText](docs/WhatsAppText.md)


## Documentation for Authorization


### basicAuth

- **Type**: HTTP basic authentication

