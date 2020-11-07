class Post < ApplicationRecord
  belongs_to :youtuber
  has_many :items, dependent: :destroy

  mount_uploader :thumbnail, ThumbnailUploader

  validates :title, presence: true
  #validates :thumbnail, presence: true
  validates :youtuber_id, presence: true
  validates :video_id, presence: true

  enum category: {morning_routin: 1, night_routin: 2, your_bag: 3, your_pouch: 4, home_time: 5}

  def self.search(search)
    return Post.all unless search
    Post.where(['title LIKE ?', "%#{search}%"])
  end
end
