class Youtuber < ApplicationRecord
  has_many :posts, dependent: :destroy

  validates :name, presence: true
  validates :channel_id, presence: true

  mount_uploader :image, ChannelImageUploader

  enum category:  {streamer: 1, actor: 2, actress: 3, fashion_model: 4, entertainer: 5, idol: 6}
end
