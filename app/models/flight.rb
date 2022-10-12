class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport"

  def self.get_departure_times
    departure_times = Flight.find_by_sql("select distinct departure_time from flights where departure_time is not null order by departure_time")
  end 

  def departure_date_formatted
    departure_time.strftime("%m/%d/%Y")
  end
end
