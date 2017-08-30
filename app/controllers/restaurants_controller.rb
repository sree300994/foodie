class RestaurantsController < ApplicationController

	def index
		@restaurants = Restaurant.all
	end

	def new
		@hotel = Restaurant.new
	end

	def create
		@restaurant = Restaurant.new(params[:restaurant].permit(:name, :location))
		if @restaurant.save
			redirect_to restaurants_path, notice: "Success"
		else
			render action: "new"
		end
	end

	def show
		@restaurant = Restaurant.find(params[:id])
		@cart_line_item = CartLineItem.new
	end

	def edit
		@restaurant = Restaurant.find(params[:id]) 
	end
	
	def update
		@restaurant = Restaurant.find(params[:id])
		if @restaurant.update_attributes(params[:restaurant].permit(:name, :location))
			redirect_to restaurant_path(@restaurant.id)
		else
			render action: "edit"
		end
	end

end
