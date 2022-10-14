class Booking < ApplicationRecord
  belongs_to :booked_flight, class_name: "Flight"
  belongs_to :booked_passenger, class_name: "Passenger"
end
