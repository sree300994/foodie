class CreateFoodMenus < ActiveRecord::Migration
  def change
    create_table :food_menus do |t|
    	t.string :name

      t.timestamps null: false
    end
  end
end
