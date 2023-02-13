class PassengerMailer < ApplicationMailer
  default from: "confirmation@flightbooker.com"

  def confirmation_email
    @booking = params[:booking]
    @flight = params[:flight]
    @passenger = params[:passenger]
    mail(to: @passenger.email, subject: 'Booking Confirmation')
  end
end
