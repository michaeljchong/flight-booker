# Flight Booker

This project is a one-way flight booker with the ability to handle travel dates, flight selection and passenger information.
The focus of this project was to obtain more hands on experience with Rails (complex associations) and practice creating advanced forms (i.e. dropdown menus, nested submissions). The most difficult part was figuring out the associations with the added complexity of nested attributes.

Startup:
* Run ./bin/dev to start local server

Project Features:
* Application flow from flight selection based on airports and dates, then flights based on available times, then inputting passenger details
* Dropdown menu for flight selection (airports, dates, number of passengers)
* Radio selection for flight times
* Complex associations across Flight, Booking, and Passenger models
* Nested attributes to create passengers via booking
* Smart querying using model methods and params
* Seed airport database from OurAirports.com
* Search existing bookings by booking ID

In The Works:
* Send booking confirmation via Action Mailer
* Add CSS
* Integration with Amadeus API

Project Extensions:
* Deploy to fly.io
* Show all flights with empty search
* Empty field for airport selection with automatic suggestions based on live character query
* Show calendar for search date
* num travelers unlimited
* Don't reset search dropdowns
* Authentication
* Show page for passengers to view/edit their bookings and flights
* Add update and destroy bookings functions
* Add update and destroy passenger functions
* Nest bookings associations within flights
