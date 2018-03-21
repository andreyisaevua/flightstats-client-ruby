require 'spec_helper'
require 'spec_mock_helper'

describe FlightStats::Airline do
  before(:each) do
    WebMock.reset!
  end

  describe "by_flight_stats_code" do
    it "must find airline" do
      stub_api_request :get, FlightStats::Airline.base_path, 'airline'
      airline = FlightStats::Airline.by_flight_stats_code 'PS'
      airline.should be_an_instance_of FlightStats::Airline
      airline.fs.should == 'PS'
    end
  end
end