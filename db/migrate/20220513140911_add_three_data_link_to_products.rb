class AddThreeDataLinkToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :three_data_link, :text
  end
end
