class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :restaurant, foreign_key: true
      t.time :booking_time

      t.timestamps
    end
  end
end
