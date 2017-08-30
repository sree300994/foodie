class CreateFoodItems < ActiveRecord::Migration
  def change
    create_table :food_items do |t|
    	t.string :items
    	t.integer :price
    	t.integer :restaurant_id

      t.timestamps null: false
    end
  end
end
