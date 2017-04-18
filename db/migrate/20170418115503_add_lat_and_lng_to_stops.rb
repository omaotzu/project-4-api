class AddLatAndLngToStops < ActiveRecord::Migration[5.0]
  def change
    add_column :stops, :lat, :float
    add_column :stops, :lng, :float
  end
end
