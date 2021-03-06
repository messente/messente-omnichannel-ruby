=begin
#Omnichannel API

#Messente's API which allows sending messages via various channels with fallback options.

OpenAPI spec version: 0.0.2
Contact: messente@messente.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-SNAPSHOT

=end

require 'date'

module Omnichannel
  class Status
    
    ACK = 'ACK'.freeze
    DELIVRD = 'DELIVRD'.freeze
    UNDELIV = 'UNDELIV'.freeze
    FAILED = 'FAILED'.freeze
    UNKNOWN = 'UNKNOWN'.freeze
    ACCEPTD = 'ACCEPTD'.freeze
    REJECTD = 'REJECTD'.freeze
    DELETED = 'DELETED'.freeze
    EXPIRED = 'EXPIRED'.freeze
    NACK = 'NACK'.freeze
    SEEN = 'SEEN'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = Status.constants.select { |c| Status::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #Status" if constantValues.empty?
      value
    end
  end

end
