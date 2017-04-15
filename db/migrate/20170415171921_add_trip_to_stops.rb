class AddTripToStops < ActiveRecord::Migration[5.0]
  def change
    add_reference :stops, :trip, foreign_key: true
  end
end
