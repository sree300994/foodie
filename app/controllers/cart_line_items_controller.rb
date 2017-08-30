class CartLineItemsController < ApplicationController

	def index
		@cart_line_items = current_user.cart_line_items
		@wish_list = WishList.new
	end

	def new
		@cart_line_item = CartLineItem.new
	end

	def create
		@cart_line_item = CartLineItem.new(params[:cart_line_item].permit(:user_id, :item_id, :restaurant_id, :quantity))
		@cart_line_item.user_id = current_user.id
		if @cart_line_item.save
			redirect_to cart_line_items_path
		else
			redirect_to restaurant_path, notice: "no"
		end
	end

	def update
		@cart_line_item = CartLineItem.find(params[:id])
		if @cart_line_item.update_attributes(params[:cart_line_item].permit(:quantity))
			redirect_to cart_line_items_path
		end
	end

	def destroy
		@cart_line_item = CartLineItem.find(params[:id])
		@cart_line_item.destroy
		redirect_to cart_line_items_path
	end
end
