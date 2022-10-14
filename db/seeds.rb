# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Seeded airports table with the 20 busiest airports of 2021
airports = Airport.create([
    { code: "ATL" }, { code: "DFW" }, { code: "DEN" }, { code: "ORD" }, { code: "LAX" },
    { code: "CLT" }, { code: "MCO" }, { code: "LAS" }, { code: "PHX" }, { code: "CAN" },
    { code: "CTU" }, { code: "MIA" }, { code: "DEL" }, { code: "IST" }, { code: "SZX" },
    { code: "SEA" }, { code: "MEX" }, { code: "CKG" }, { code: "SHA" }, { code: "PEK" }
  ])

# Seeded with fictional flights
flights = Flight.create([
    { departure_airport_id: 2, arrival_airport_id: 1, departure_time: "Feb 22 2023 10:50", duration: "6:30" },
    { departure_airport_id: 20, arrival_airport_id: 3, departure_time: "Dec 3 2023 10:50", duration: "1:20" },
    { departure_airport_id: 15, arrival_airport_id: 16, departure_time: "Jan 12 2023 10:50", duration: "8:39" },
    { departure_airport_id: 19, arrival_airport_id: 14, departure_time: "Jan 19 2023 10:50", duration: "5:34" },
    { departure_airport_id: 3, arrival_airport_id: 5, departure_time: "Mar 23 2023 10:50", duration: "7:52" },
    { departure_airport_id: 5, arrival_airport_id: 7, departure_time: "Apr 10 2023 10:50", duration: "3:16" },
    { departure_airport_id: 7, arrival_airport_id: 3, departure_time: "Apr 20 2023 10:50", duration: "0:59" },
    { departure_airport_id: 11, arrival_airport_id: 10, departure_time: "Aug 2 2023 10:50", duration: "1:22" },
    { departure_airport_id: 13, arrival_airport_id: 18, departure_time: "Oct 10 2023 10:50", duration: "7:18" },
    { departure_airport_id: 1, arrival_airport_id: 4, departure_time: "Dec 6 2023 10:50", duration: "9:43" },
    { departure_airport_id: 16, arrival_airport_id: 9, departure_time: "Dec 14 2023 10:50", duration: "17:06" },
    { departure_airport_id: 6, arrival_airport_id: 2, departure_time: "Nov 8 2023 10:50", duration: "21:09" }
  ])

passengers = Passenger.create([
  { name: "Amy", email: "a@a.com" },
  { name: "Ben", email: "b@b.com" },
  { name: "Cindy", email: "c@c.com" }
])

bookings = Booking.create([
  { booked_flight: flights.first, booked_passenger: passengers.first }
])
