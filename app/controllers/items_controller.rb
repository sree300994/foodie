class ItemsController < ApplicationController

	before_action :authenticate_user!, except: [:index, :show]
	def index
		@items = Item.all
	end

	def new
		@item = Item.new
	end

	def create
		@item = Item.new(params[:item].permit(:name, :price, :description, :food_menu_id))
		if @item.save
			redirect_to items_path
		else
			render action: "new"
		end
	end


	def show
		@item = Item.find(params[:id])
		#@cart_line_item = CartLineItem.new
	end

	def edit
		@item = Item.find(params[:id])
	end

	def update
		@item = Item.find(params[:id])
		if @item.update_attributes(params[:item].permit(:name, :price, :description, :food_menu_id))
			redirect_to items_path
		else
			render action: "edit"
		end
	end
	
	def destroy
		@item = Item.find(params[:id])
		if @item.destroy
			redirect_to items_path
		end
	end

end
