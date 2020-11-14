class AddColumnToPostItemCategories < ActiveRecord::Migration[6.0]
  def change
    add_reference :post_item_categories, :post, type: :bigint, index: true, foreign_key: true
  end
end
