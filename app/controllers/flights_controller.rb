class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @airports = Airport.all.map{ |a| [a.code, a.id] }.sort
    @num_travelers = (1..4).to_a
    @departure_dates = @flights.map{ |f| f.departure_date_formatted }.sort
    @departure_airport = params[:departure_airport]
    @arrival_airport = params[:arrival_airport]
  end
end
