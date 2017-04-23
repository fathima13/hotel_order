class AddHotelToDishes < ActiveRecord::Migration[5.0]
  def change
    add_reference :dishes, :hotel, foreign_key: true
  end
end
