class AddNightLifeAndCultureAndHospitalityToStops < ActiveRecord::Migration[5.0]
  def change
    add_column :stops, :night_life, :integer
    add_column :stops, :culture, :integer
    add_column :stops, :hospitality, :integer
  end
end
