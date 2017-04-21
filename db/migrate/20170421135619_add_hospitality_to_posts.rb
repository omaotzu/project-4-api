class AddHospitalityToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :hospitality, :integer
  end
end
