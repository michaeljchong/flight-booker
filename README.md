# Flight Booker

This project is a one-way flight booker with the ability to handle travel dates, flight selection and passenger information.
The focus of this project was to obtain more hands on experience with Rails (complex associations) and practice creating advanced forms (i.e. dropdown menus, nested submissions). The most difficult part was figuring out the associations with the added complexity of nested attributes.

Project Features:
* Application flow from flight selection based on airports and dates, then flights based on available times, then inputting passenger details
* Dropdown menu for flight selection (airports, dates, number of passengers)
* Radio selection for flight times
* Complex associations across Flight, Booking, and Passenger models
* Nested attributes to create passengers via booking
* Smart querying using model methods and params

Project Extensions:
* Show all flights with empty search
* Don't reset search dropdowns
* Add CSS
* Navbar
* Authentication
* Show page for passengers to view/edit their bookings and flights
