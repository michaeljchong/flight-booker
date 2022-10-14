class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :flight_booking_id
      t.integer :passenger_booking_id

      t.timestamps
    end
  end
end
