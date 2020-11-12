class CreateItemPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :item_posts do |t|
      t.references :item, type: :bigint, foreign_key: true, null:false
      t.references :post, type: :bigint, foreign_key: true, null:false
      t.timestamps
    end
  end
end
