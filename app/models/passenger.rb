class Passenger < ApplicationRecord
  has_many :bookings, foreign_key: :booked_passenger
  has_many :booked_flights, through: :bookings
end
