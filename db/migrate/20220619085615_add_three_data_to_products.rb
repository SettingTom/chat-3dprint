class AddThreeDataToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :three_data, :binary
  end
end
