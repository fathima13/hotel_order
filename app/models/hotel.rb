class Hotel < ApplicationRecord
	has_many :dishes
	has_many :orders
end
