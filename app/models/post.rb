class Post < ApplicationRecord
  belongs_to :youtuber
  has_many :post_item_categories, dependent: :destroy
  has_many :categories, through: :post_item_categories
  has_many :item_posts, dependent: :destroy
  has_many :items, through: :item_posts

  mount_uploader :thumbnail, ThumbnailUploader

  validates :title, presence: true, uniqueness: true
  validates :thumbnail, presence: true
  validates :youtuber_id, presence: true
  validates :video_id, presence: true, uniqueness: true

  def self.search(search)
    return Post.all unless search
    Post.where(['title LIKE ?', "%#{search}%"])
  end
end
