class AddIndexToShopsName < ActiveRecord::Migration
  def change
  	add_index :shops, :name
  end
end
