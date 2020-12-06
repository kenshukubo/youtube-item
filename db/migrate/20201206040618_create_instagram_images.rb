class CreateInstagramImages < ActiveRecord::Migration[6.0]
  def change
    create_table :instagram_images do |t|
      t.references :post, type: :bigint, foreign_key: true
      t.string :image
      t.timestamps
    end
  end
end
