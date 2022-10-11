class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @airports = Airport.all.map{ |a| [a.code, a.id] }
    @num_travelers = (1..4).to_a
    @departure_times = @flights.map{ |f| [f.departure_time, f.id] }
  end
end
