class ChangeColumnToNotNullItemId < ActiveRecord::Migration[6.0]
  def change
    def up
      change_column :post_item_categories, :item_id,:bigint, null: true
    end
  
    def down
      change_column :post_item_categories, :item_id,:bigint, null: false
    end
  end
end
