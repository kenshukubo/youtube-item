class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.references :post, type: :bigint, foreign_key: true
      t.string :name
      t.string :image
      t.integer :price
      t.string :asin
      t.text :amazon_url
      t.text :rakuten_url
      t.text :url

      t.timestamps
    end
  end
end
