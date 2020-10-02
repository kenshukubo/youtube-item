class CreateYoutubers < ActiveRecord::Migration[6.0]
  def change
    create_table :youtubers do |t|

      t.timestamps
      t.string "name"
      t.integer "sex"
      t.integer "category"
      t.string "image"
    end
  end
end
