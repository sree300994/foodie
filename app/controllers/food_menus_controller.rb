class FoodMenusController < ApplicationController

	before_action :authenticate_user!, except: [:index, :show]
	before_action :check_is_admin, except: [:index, :show]

	def index
		@food_menus = FoodMenu.all
	end

	def new
		@food_menu = FoodMenu.new
	end

	def create
		@food_menu = FoodMenu.new(params[:food_menu].permit(:name, restaurant_ids:[]))
		if @food_menu.save
			redirect_to food_menus_path
		else
			render action: "new"
		end
	end

	def edit
		@food_menu = FoodMenu.find(params[:id])
	end

	def update
		@food_menu = FoodMenu.find(params[:id])
		if @food_menu.update_attributes(params[:food_menu].permit(:name, restaurant_ids:[]))
			redirect_to food_menus_path
		else
			render action: "edit"
		end
	end

	def show
		@food_menu = FoodMenu.find(params[:id])
	end

	def destroy
		@food_menu = FoodMenu.find(params[:id])
		if @food_menu.destroy
			redirect_to food_menus_path
		end
	end
end
