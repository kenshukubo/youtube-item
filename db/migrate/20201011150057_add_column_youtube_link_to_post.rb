class AddColumnYoutubeLinkToPost < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :youtube_link, :string
  end
end