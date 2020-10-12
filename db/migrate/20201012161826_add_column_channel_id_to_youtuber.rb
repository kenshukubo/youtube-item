class AddColumnChannelIdToYoutuber < ActiveRecord::Migration[6.0]
  def change
    add_column :youtubers, :channel_id, :string
  end
end
