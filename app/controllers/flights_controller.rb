class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @airports = Airport.all.map{ |a| [a.code, a.id] }
    @passengers = (1..4).to_a
    @dates = @flights.map{ |f| [f.departure_time, f.id] }
  end
end
