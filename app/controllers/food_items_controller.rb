class FoodItemsController < ApplicationController

	def index
		@food_items = FoodItem.all
	end

	def new
		@food_item = FoodItem.new
	end

	def create
		@food_item = FoodItem.new(params[:food_item].permit(:items, :price, :restaurant_id))
		if @food_item.save
			redirect_to food_items_path
		else
			render action: "new"
		end
	end
end
