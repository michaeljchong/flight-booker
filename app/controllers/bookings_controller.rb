class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @flight = Flight.find(params[:flight_id])
    params[:num_travelers].to_i.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      @booking.passengers.each do |passenger|
        PassengerMailer.with(booking: @booking, flight: @booking.flight, passenger: passenger).confirmation_email.deliver_later
      end
      flash[:success] = "Great! Your flight booking is complete!"
      redirect_to @booking
    else
      flash.now[:error] = "Passenger details submitted incorrectly"
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @flight = @booking.flight
  end

  private
  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
  end
end
