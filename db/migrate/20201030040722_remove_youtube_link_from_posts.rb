class RemoveYoutubeLinkFromPosts < ActiveRecord::Migration[6.0]
  def change
    remove_column :posts, :youtube_link, :string
    remove_column :items, :category, :integer
  end
end
