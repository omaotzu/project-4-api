class AddUserToStops < ActiveRecord::Migration[5.0]
  def change
    add_reference :stops, :user, foreign_key: true
  end
end
