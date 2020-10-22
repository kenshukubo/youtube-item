class ChangeDataAmazonUrlItem < ActiveRecord::Migration[6.0]
  def change
    change_column :items, :amazon_url, :text
    change_column :items, :rakuten_url, :text
    change_column :items, :url, :text
    add_column :items, :asin, :string
  end
end
