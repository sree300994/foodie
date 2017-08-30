class FoodMenu < ActiveRecord::Base
	has_many :items
	has_many :restaurant_food_menus
	has_many :restaurants, through: :restaurant_food_menus
	validates_presence_of :name
	validates_uniqueness_of :name
end
