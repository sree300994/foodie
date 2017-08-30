class Restaurant < ActiveRecord::Base
	has_many :items
	has_many :cart_line_items
	has_many :restaurant_food_menus
	has_many :food_menus, through: :restaurant_food_menus
	has_many :wish_list
	validates_presence_of :name, :location
end
