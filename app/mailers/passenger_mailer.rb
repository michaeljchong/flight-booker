class PassengerMailer < ApplicationMailer
  default from: "confirmation@flightbooker.com"

  def confirmation_email
    @passenger = params[:passenger]
    mail(to: @passenger.email, subject: 'Booking Confirmed')
  end
end
