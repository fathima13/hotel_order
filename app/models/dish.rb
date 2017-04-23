class Dish < ApplicationRecord
	belongs_to :hotel
	has_many :order_items
  has_many :orders, through: :order_items
end
