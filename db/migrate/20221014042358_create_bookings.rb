class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.belongs_to :booked_flight
      t.belongs_to :booked_passenger

      t.timestamps
    end
  end
end
