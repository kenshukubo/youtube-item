class AddColumnYoutubeLinkToYoutuber < ActiveRecord::Migration[6.0]
  def change
    add_column :youtubers, :youtube_link, :string
  end
end
