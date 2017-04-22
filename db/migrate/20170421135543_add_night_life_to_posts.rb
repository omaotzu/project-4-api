class AddNightLifeToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :night_life, :integer
  end
end
