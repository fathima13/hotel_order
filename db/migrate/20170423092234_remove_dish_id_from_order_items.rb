class RemoveDishIdFromOrderItems < ActiveRecord::Migration[5.0]
  def change
    remove_column :order_items, :dish_id, :integer
  end
end
