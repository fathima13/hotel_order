class AddHotelIdToDishes < ActiveRecord::Migration[5.0]
  def change
    add_column :dishes, :hotel_id, :integer
  end
end
