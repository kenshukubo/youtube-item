class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.references :post, type: :bigint, foreign_key: true
      t.string :name
      t.string :image
      t.integer :category
      t.integer :price
      t.string :amazon_url
      t.string :rakuten_url
      t.string :url

      t.timestamps
    end
  end
end
