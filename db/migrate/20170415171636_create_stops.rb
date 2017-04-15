class CreateStops < ActiveRecord::Migration[5.0]
  def change
    create_table :stops do |t|
      t.string :place
      t.date :start_date
      t.date :leave_date

      t.timestamps
    end
  end
end
