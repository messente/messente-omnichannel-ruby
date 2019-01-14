require 'omnichannel'


# Setup authorization
Omnichannel.configure do |config|
    # Configure HTTP basic authorization: basicAuth
    config.username = 'YOUR USERNAME'
    config.password = 'YOUR PASSWORD'
end

api_instance = Omnichannel::DeliveryReportApi.new
omnimessage_id = 'omnimessage_id_example' # String | UUID of the Omnimessage to for which the delivery report is to be retrieved

begin
    #Retrieves the delivery report for the Omnimessage
    result = api_instance.retrieve_delivery_report(omnimessage_id)
    p result
rescue Omnichannel::ApiError => e
    puts "Exception when calling DeliveryReportApi->retrieve_delivery_report: #{e}"
end
