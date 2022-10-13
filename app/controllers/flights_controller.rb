class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @departure_airports = @flights.map{ |f| [f.departure_airport.code, f.departure_airport.id] }.sort
    @arrival_airports = @flights.map{ |f| [f.arrival_airport.code, f.arrival_airport.id] }.sort
    @departure_dates = @flights.map{ |f| f.departure_date_formatted }.sort
    @num_travelers = (1..4).to_a
    
    @chosen_departure_airport = params[:departure_airport]
    @chosen_arrival_airport = params[:arrival_airport]
    @chosen_departure_date = params[:departure_date] # search flights.departure_time for includes date
  end
end
