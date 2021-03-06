=begin
#Omnichannel API

#Messente's API which allows sending messages via various channels with fallback options.

OpenAPI spec version: 0.0.2
Contact: messente@messente.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-SNAPSHOT

=end

# Common files
require 'omnichannel/api_client'
require 'omnichannel/api_error'
require 'omnichannel/version'
require 'omnichannel/configuration'

# Models
require 'omnichannel/models/channel'
require 'omnichannel/models/delivery_report_response'
require 'omnichannel/models/delivery_result'
require 'omnichannel/models/err'
require 'omnichannel/models/error_item'
require 'omnichannel/models/error_response'
require 'omnichannel/models/message_result'
require 'omnichannel/models/omni_message_create_success_response'
require 'omnichannel/models/omnimessage'
require 'omnichannel/models/response_error_code'
require 'omnichannel/models/response_error_title'
require 'omnichannel/models/sms'
require 'omnichannel/models/status'
require 'omnichannel/models/viber'
require 'omnichannel/models/whats_app'
require 'omnichannel/models/whats_app_audio'
require 'omnichannel/models/whats_app_document'
require 'omnichannel/models/whats_app_image'
require 'omnichannel/models/whats_app_text'

# APIs
require 'omnichannel/api/delivery_report_api'
require 'omnichannel/api/omnimessage_api'

module Omnichannel
  class << self
    # Customize default settings for the SDK using block.
    #   Omnichannel.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
