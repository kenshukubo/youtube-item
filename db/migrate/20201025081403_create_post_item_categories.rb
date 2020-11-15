class CreatePostItemCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :post_item_categories do |t|
      t.references :post, type: :bigint, foreign_key: true
      t.references :item, type: :bigint, foreign_key: true
      t.references :category, type: :bigint, foreign_key: true, null:false
      t.timestamps
    end
  end
end
