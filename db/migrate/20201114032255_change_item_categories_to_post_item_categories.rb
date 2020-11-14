class ChangeItemCategoriesToPostItemCategories < ActiveRecord::Migration[6.0]
  def change
    rename_table :item_categories, :post_item_categories
  end
end
