class AddColumnVideoIdToPost < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :video_id, :string
  end
end
