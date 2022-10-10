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
    { departure_airport_id: 20, arrival_airport_id: 3, departure_time: "Feb 22 2023 10:50", duration: "6:30" },
    { departure_airport_id: 15, arrival_airport_id: 16, departure_time: "Feb 22 2023 10:50", duration: "6:30" },
    { departure_airport_id: 19, arrival_airport_id: 14, departure_time: "Feb 22 2023 10:50", duration: "6:30" },
    { departure_airport_id: 3, arrival_airport_id: 5, departure_time: "Feb 22 2023 10:50", duration: "6:30" },
    { departure_airport_id: 5, arrival_airport_id: 7, departure_time: "Feb 22 2023 10:50", duration: "6:30" },
    { departure_airport_id: 7, arrival_airport_id: 3, departure_time: "Feb 22 2023 10:50", duration: "6:30" },
    { departure_airport_id: 11, arrival_airport_id: 10, departure_time: "Feb 22 2023 10:50", duration: "6:30" },
    { departure_airport_id: 13, arrival_airport_id: 18, departure_time: "Feb 22 2023 10:50", duration: "6:30" },
    { departure_airport_id: 1, arrival_airport_id: 4, departure_time: "Feb 22 2023 10:50", duration: "6:30" },
    { departure_airport_id: 16, arrival_airport_id: 9, departure_time: "Feb 22 2023 10:50", duration: "6:30" },
    { departure_airport_id: 6, arrival_airport_id: 2, departure_time: "Feb 22 2023 10:50", duration: "6:30" }
  ])
