class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|

      t.timestamps
      t.string "title"
      t.string "thumbnail"
      t.integer "category"
    end
  end
end
