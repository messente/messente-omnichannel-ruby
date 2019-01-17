# omnichannel

Omnichannel - the Ruby gem for the Omnichannel API

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build omnichannel.gemspec
```

Then either install the gem locally:

```shell
gem install ./omnichannel-1.0.0.gem
```
(for development, run `gem install --dev ./omnichannel-1.0.0.gem` to install the development dependencies)

Finally add this to the Gemfile:

    gem 'omnichannel', '~> 1.0.0'

### Install from Git

    gem 'omnichannel', :git => 'https://github.com/messente/messente-omnichannel-ruby.git'


## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
require 'omnichannel'
# setup authorization
Omnichannel.configure do |config|
    # Configure HTTP basic authorization: basicAuth
    config.username = '<MESSENTE_API_USERNAME>'
    config.password = '<MESSENTE_API_PASSWORD>'
end

api_instance = Omnichannel::OmnimessageApi.new
omnimessage = Omnichannel::Omnimessage.new
omnimessage.to = '<phone number in e.164 format>'
omnimessage.messages = [
    Omnichannel::SMS.new(
        {
            :sender => "<sender name or phone number in e.164 format>",
            :text => "Hello SMS!"
        }
    ),
    Omnichannel::WhatsApp.new(
        {
            :sender => "<sender name or phone number in e.164 format>",
            :text => Omnichannel::WhatsAppText.new(
                {
                    :body => "Hello from WhatsApp!",
                    :preview_url => false
                }
            )
        }
    ),
    Omnichannel::Viber.new(
        {
            :sender => "<sender name or phone number in e.164 format>",
            :text => "Hello from Viber!"
        }
    )
]

begin
    result = api_instance.send_omnimessage(omnimessage)
rescue Omnichannel::ApiError => e
    puts "Exception when calling OmnimessageApi->send_omnimessage: #{e}"
    puts e.response_body
end
```

## Documentation for API Endpoints

All URIs are relative to *https://api.messente.com/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*Omnichannel::DeliveryReportApi* | [**retrieve_delivery_report**](docs/DeliveryReportApi.md#retrieve_delivery_report) | **GET** /omnimessage/{omnimessage_id}/status | Retrieves the delivery report for the Omnimessage
*Omnichannel::OmnimessageApi* | [**cancel_scheduled_message**](docs/OmnimessageApi.md#cancel_scheduled_message) | **DELETE** /omnimessage/{omnimessage_id} | Cancels a scheduled Omnimessage
*Omnichannel::OmnimessageApi* | [**send_omnimessage**](docs/OmnimessageApi.md#send_omnimessage) | **POST** /omnimessage | Sends an Omnimessage


## Documentation for Models

 - [Omnichannel::Channel](docs/Channel.md)
 - [Omnichannel::DeliveryReportResponse](docs/DeliveryReportResponse.md)
 - [Omnichannel::DeliveryResult](docs/DeliveryResult.md)
 - [Omnichannel::Err](docs/Err.md)
 - [Omnichannel::ErrorItem](docs/ErrorItem.md)
 - [Omnichannel::ErrorResponse](docs/ErrorResponse.md)
 - [Omnichannel::MessageResult](docs/MessageResult.md)
 - [Omnichannel::OmniMessageCreateSuccessResponse](docs/OmniMessageCreateSuccessResponse.md)
 - [Omnichannel::Omnimessage](docs/Omnimessage.md)
 - [Omnichannel::ResponseErrorCode](docs/ResponseErrorCode.md)
 - [Omnichannel::ResponseErrorTitle](docs/ResponseErrorTitle.md)
 - [Omnichannel::SMS](docs/SMS.md)
 - [Omnichannel::Status](docs/Status.md)
 - [Omnichannel::Viber](docs/Viber.md)
 - [Omnichannel::WhatsApp](docs/WhatsApp.md)
 - [Omnichannel::WhatsAppAudio](docs/WhatsAppAudio.md)
 - [Omnichannel::WhatsAppDocument](docs/WhatsAppDocument.md)
 - [Omnichannel::WhatsAppImage](docs/WhatsAppImage.md)
 - [Omnichannel::WhatsAppText](docs/WhatsAppText.md)


## Documentation for Authorization


### basicAuth

- **Type**: HTTP basic authentication

