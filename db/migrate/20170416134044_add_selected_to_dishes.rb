class AddSelectedToDishes < ActiveRecord::Migration[5.0]
  def change
    add_column :dishes, :selected, :boolean
  end
end
