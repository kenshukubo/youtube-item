class CreateYoutubers < ActiveRecord::Migration[6.0]
  def change
    create_table :youtubers do |t|
      t.string "name"
      t.integer "category"
      t.string "image"
      t.string "channel_id"
      t.timestamps
    end
  end
end
