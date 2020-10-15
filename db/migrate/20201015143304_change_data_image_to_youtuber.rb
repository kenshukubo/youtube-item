class ChangeDataImageToYoutuber < ActiveRecord::Migration[6.0]
  def change
    change_column :youtubers, :image, :text
  end
end
