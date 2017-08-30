class WishListsController < ApplicationController

	def index
		@wish_lists = WishList.all
	end

	def create
		@wish_list = WishList.new(params[:wish_list].permit(:user_id, :restaurant_id, :item_id))
		@wish_list.user_id = current_user.id
		@wish_list.save
		redirect_to wish_lists_path 
	end
end
