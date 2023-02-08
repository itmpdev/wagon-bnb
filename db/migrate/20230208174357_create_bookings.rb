class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.integer :num_guests
      t.integer :property_id
      t.integer :user_id

      t.timestamps
    end
  end
end
