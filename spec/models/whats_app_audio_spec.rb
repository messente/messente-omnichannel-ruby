=begin
#Omnichannel API

#Messente's API which allows sending messages via various channels with fallback options.

OpenAPI spec version: 0.0.2
Contact: messente@messente.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Omnichannel::WhatsAppAudio
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'WhatsAppAudio' do
  before do
    # run before each test
    @instance = Omnichannel::WhatsAppAudio.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WhatsAppAudio' do
    it 'should create an instance of WhatsAppAudio' do
      expect(@instance).to be_instance_of(Omnichannel::WhatsAppAudio)
    end
  end
  describe 'test attribute "content"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
