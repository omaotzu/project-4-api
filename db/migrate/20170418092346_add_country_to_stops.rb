class AddCountryToStops < ActiveRecord::Migration[5.0]
  def change
    add_column :stops, :country, :string
  end
end
