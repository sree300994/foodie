class WishList < ActiveRecord::Base

	belongs_to :user
	belongs_to :item
	belongs_to :restaurant
end
