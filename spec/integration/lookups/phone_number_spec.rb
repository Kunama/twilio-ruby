require 'spec_helper'

describe Twilio::Resources::Lookups::PhoneNumberList do
  before do
    Twiliodeck.activate
  end

  after do
    Twiliodeck.deactivate
  end

  context "should fetch None" do
    it "and return 200" do
      client = Twilio::REST::LookupsClient.new('ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'AUTHTOKEN')
      resource = client.phone_numbers.get('phone_number', {CountryCode: 'country_code', Type: 'type'})
      expect { resource.phone_number }.not_to raise_error
    end
  
    it "and return 401" do
      client = Twilio::REST::LookupsClient.new('ACllllllllllllllllllllllllllllllll', 'AUTHTOKEN')
      resource = client.phone_numbers.get('phone_number', {CountryCode: 'country_code', Type: 'type'})
      expect { resource.phone_number }.to raise_error Twilio::REST::RequestError
    end
  
    it "and return 404" do
      client = Twilio::REST::LookupsClient.new('ACkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk', 'AUTHTOKEN')
      resource = client.phone_numbers.get('phone_number', {CountryCode: 'country_code', Type: 'type'})
      expect { resource.phone_number }.to raise_error Twilio::REST::RequestError
    end
  
    it "and return 500" do
      client = Twilio::REST::LookupsClient.new('ACmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm', 'AUTHTOKEN')
      resource = client.phone_numbers.get('phone_number', {CountryCode: 'country_code', Type: 'type'})
      expect { resource.phone_number }.to raise_error Twilio::REST::RequestError
    end
  end
end