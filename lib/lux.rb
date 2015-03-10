# Resources
require 'httparty'

# Errors
require 'lux/errors/api_error'
require 'lux/errors/lux_error'

# API
require 'lux/champions'
require 'lux/current_game'
require 'lux/featured_game'
require 'lux/resource'

module Lux

  include HTTParty

  class << self
    attr_accessor :api_key, :default_region
  end

  private

  def self.parse_options(options = {})
    options.except!(:region)
    options[:api_key] = self.api_key
    options.to_query
  end

  def self.region(options = {})
    unless options[:region] || self.default_region
      raise LuxError.new("You have not set a region either by Lux.default_region or in your request")
    end
    options[:region] ||= self.default_region
  end

  def self.request(resource,options = {})
    response = HTTParty.get(resource)
    raise ApiError.new(response.code) unless response.code == 200
    response.parsed_response
  end

  def self.build_resource(service,options = {})
    region = self.region(options)
    opts = self.parse_options(options)
    if Resource.respond_to? service
      Resource.public_send(service,region,opts,options)
    else
      raise LuxError.new("Unknown Service")
    end
  end

end
