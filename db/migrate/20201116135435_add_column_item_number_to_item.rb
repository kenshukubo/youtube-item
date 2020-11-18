class AddColumnItemNumberToItem < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :item_number, :integer
  end
end
