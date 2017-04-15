class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.string :trip_name
      t.date :start_date
      t.date :leave_date

      t.timestamps
    end
  end
end
