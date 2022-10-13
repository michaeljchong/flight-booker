class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport"

  scope :get_departure_times, -> { select(:departure_time).distinct.order(:departure_time) }

  def departure_date_formatted
    departure_time.strftime("%m/%d/%Y")
  end
end
