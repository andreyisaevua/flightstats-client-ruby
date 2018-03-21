require 'spec_helper'
require 'time'

describe FlightStats::Airline do
  # Really slow
  # it "must find all airlines" do
  #   airlines = FlightStats::Airline.actives
  #   airlines.size.should >= 20
  # end

  it "must find PS by fs code" do
    airline = FlightStats::Airline.by_flight_stats_code 'PS'
    airline.active.should be true
    airline.name.should == 'UIA'
    airline.iata.should == 'PS'
  end

  it "must find PS by iata code" do
    airlines = FlightStats::Airline.by_iata_code 'PS'
    airlines.size.should == 1
    airline = airlines.first

    airline.active.should be true
    airline.name.should == 'UIA'
    airline.iata.should == 'PS'
  end

  it "must find PDX by icao code" do
    airlines = FlightStats::Airline.by_icao_code 'AUI'
    airlines.size.should == 1
    airline = airlines.first

    airline.active.should be true
    airline.name.should == 'UIA'
    airline.iata.should == 'PS'
  end

end
