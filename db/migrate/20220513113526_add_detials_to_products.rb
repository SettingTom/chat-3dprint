class AddDetialsToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :three_data_obj, :binary
    add_column :products, :three_data_mtl, :binary
  end
end
