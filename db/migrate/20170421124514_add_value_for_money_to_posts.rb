class AddValueForMoneyToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :value_for_money, :integer
  end
end
