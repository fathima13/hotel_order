class RemoveHotelIdFromDishes < ActiveRecord::Migration[5.0]
  def change
    remove_column :dishes, :hotel_id, :integer
  end
end
