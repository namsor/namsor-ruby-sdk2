=begin
#NamSor API v2

#NamSor API v2 : enpoints to process personal names (gender, cultural origin or ethnicity) in all alphabets or languages. Use GET methods for small tests, but prefer POST methods for higher throughput (batch processing of up to 1000 names at a time). Need something you can't find here? We have many more features coming soon. Let us know, we'll do our best to add it! 

OpenAPI spec version: 2.0.2-beta
Contact: contact@namsor.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for NamSorClient::BatchPersonalNameGeoOut
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'BatchPersonalNameGeoOut' do
  before do
    # run before each test
    @instance = NamSorClient::BatchPersonalNameGeoOut.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BatchPersonalNameGeoOut' do
    it 'should create an instance of BatchPersonalNameGeoOut' do
      expect(@instance).to be_instance_of(NamSorClient::BatchPersonalNameGeoOut)
    end
  end
  describe 'test attribute "personal_names"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
