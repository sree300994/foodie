class AddColumnToRestaurants < ActiveRecord::Migration
  def change
  	add_column :restaurants, :item_id, :integer
  end
end
