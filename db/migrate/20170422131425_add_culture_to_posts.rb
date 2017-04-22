class AddCultureToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :culture, :integer
  end
end
