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

# Unit tests for OpenapiClient::WhatsAppText
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'WhatsAppText' do
  before do
    # run before each test
    @instance = OpenapiClient::WhatsAppText.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WhatsAppText' do
    it 'should create an instance of WhatsAppText' do
      expect(@instance).to be_instance_of(OpenapiClient::WhatsAppText)
    end
  end
  describe 'test attribute "preview_url"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "body"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
