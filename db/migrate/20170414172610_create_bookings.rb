class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :firstname
      t.string :lastname
      t.integer :date
      t.integer :start
      t.integer :hours
      t.integer :players
      t.string :zone

      t.timestamps null: false
    end
  end
end
