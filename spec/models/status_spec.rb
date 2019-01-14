=begin
#Omnichannel API

#Messente's API which allows sending messages via various channels with fallback options.

OpenAPI spec version: 0.0.2
Contact: messente@messente.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OpenapiClient::Status
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'Status' do
  before do
    # run before each test
    @instance = OpenapiClient::Status.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Status' do
    it 'should create an instance of Status' do
      expect(@instance).to be_instance_of(OpenapiClient::Status)
    end
  end
end
