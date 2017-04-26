class AddCostToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :cost, :double
  end
end
