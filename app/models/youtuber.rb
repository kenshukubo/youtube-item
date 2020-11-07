class Youtuber < ApplicationRecord
  has_many :posts, dependent: :destroy

  validates :name, presence: true
  validates :channel_id, presence: true

  mount_uploader :image, ChannelImageUploader

  enum category:  {streamer: 1, talent: 2, fashion_model: 3, entertainer: 4, idol: 5, other: 6}

  def self.search(search)
    return Youtuber.all unless search
    Youtuber.where(['name LIKE ?', "%#{search}%"])
  end
end
