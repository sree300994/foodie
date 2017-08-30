class FoodItem < ActiveRecord::Base
	belongs_to :restaurant
	validates_presence_of :items, :price, :restaurant_id
	validates_numericality_of :price, :restaurant_id
end
