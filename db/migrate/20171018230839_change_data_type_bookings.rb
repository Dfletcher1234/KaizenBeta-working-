class ChangeDataTypeBookings < ActiveRecord::Migration[5.1]
  def change
    remove_column :bookings, :status
  end
end
