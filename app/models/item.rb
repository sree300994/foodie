class Item < ActiveRecord::Base
	belongs_to :food_menu
	belongs_to :restaurant
	has_many :cart_line_items
	has_one :wish_list
	validates_presence_of :name, :price
end
