class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport"
  has_many :bookings, dependent: :destroy
  has_many :passengers, through: :bookings

  scope :get_departure_times, -> { select(:departure_time).distinct.order(:departure_time) }

  def departure_date_formatted
    departure_time.strftime("%m/%d/%Y")
  end

  def departure_time_formatted
    departure_time.strftime("%I:%M %p")
  end
end
