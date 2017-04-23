class AddCuisineToDishes < ActiveRecord::Migration[5.0]
  def change
    add_reference :dishes, :cuisine, foreign_key: true
  end
end
