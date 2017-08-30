class RestaurantFoodMenu < ActiveRecord::Base

	belongs_to :food_menu
	belongs_to :restaurant
end
