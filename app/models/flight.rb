class Flight < ApplicationRecord
  has_one :departure_airport, class_name: "Airport"
  has_one :arrival_airport, class_name: "Airport"
end
