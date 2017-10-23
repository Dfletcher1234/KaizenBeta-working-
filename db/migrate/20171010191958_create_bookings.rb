class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.integer :mentor_id
      t.integer :student_id
      t.datetime :booking_date
      t.string :status
      t.time   :booking_time

      t.timestamps
    end
  end
end
