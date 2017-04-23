class AddDishToOrderItems < ActiveRecord::Migration[5.0]
  def change
    add_reference :order_items, :dish, foreign_key: true
  end
end
