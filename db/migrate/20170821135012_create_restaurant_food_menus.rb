class CreateRestaurantFoodMenus < ActiveRecord::Migration
  def change
    create_table :restaurant_food_menus do |t|
    	t.integer :restaurant_id
    	t.integer :food_menu_id

      t.timestamps null: false
    end
  end
end
