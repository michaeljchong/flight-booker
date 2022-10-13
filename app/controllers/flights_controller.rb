class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @airports = Airport.all.map{ |a| [a.code, a.id] }.sort
    @num_travelers = (1..4).to_a
    @departure_times = @flights.map{ |f| f.departure_time }
    @departure_airport = params[:departure_airport]
    @arrival_airport = params[:arrival_airport]
  end
end
