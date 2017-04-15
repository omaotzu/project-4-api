class AddStopToPosts < ActiveRecord::Migration[5.0]
  def change
    add_reference :posts, :stop, foreign_key: true
  end
end
