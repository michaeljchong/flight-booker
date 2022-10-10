# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

airports = Airport.create([
    { code: "ATL" }, { code: "DFW" }, { code: "DEN" }, { code: "ORD" }, { code: "LAX" },
    { code: "CLT" }, { code: "MCO" }, { code: "LAS" }, { code: "PHX" }
  ])

flights = Flight.create([
    { departure_airport_id: 2, arrival_airport_id: 1, departure_time: "Feb 22 2023 10:50", duration: "6:30" }
  ])
