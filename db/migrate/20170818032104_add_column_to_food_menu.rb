class AddColumnToFoodMenu < ActiveRecord::Migration
  def change
  	add_column :food_menus, :restaurant_id, :integer
  end
end
