class AddValueForMoneyToStops < ActiveRecord::Migration[5.0]
  def change
    add_column :stops, :value_for_money, :integer
  end
end
