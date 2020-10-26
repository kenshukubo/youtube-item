class RemoveSexFromYoutubers < ActiveRecord::Migration[6.0]
  def change
    remove_column :youtubers, :sex, :integer
    remove_column :youtubers, :youtube_link, :string
  end
end
