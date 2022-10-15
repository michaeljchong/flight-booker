class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @flight = Flight.find(params[:flight_id])
    @num_travelers = params[:num_travelers].to_i
  end

  def create
  end

  def show
  end
end
