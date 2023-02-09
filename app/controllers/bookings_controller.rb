class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end
  
  def new
    @booking = Booking.new
    @flight = Flight.find(params[:flight_id])
    params[:num_travelers].to_i.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      flash[:success] = "Great! Your flight booking is complete!"
      redirect_to @booking
    else
      flash.now[:error] = "Passenger details submitted incorrectly"
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @flight = Flight.find(@booking.flight_id)
  end

  private
  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
  end
end
