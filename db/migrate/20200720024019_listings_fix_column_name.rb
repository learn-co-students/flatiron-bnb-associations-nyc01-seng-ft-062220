class ListingsFixColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :listings, :adress, :address
  end
end
