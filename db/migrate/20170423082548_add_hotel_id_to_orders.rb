class AddHotelIdToOrders < ActiveRecord::Migration[5.0]
  def change
  	add_reference :orders, :hotel, index: true
  end
end
