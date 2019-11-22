class AddDateRangeToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :date_range, :integer
  end
end
