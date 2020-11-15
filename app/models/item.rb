class Item < ApplicationRecord
  has_many :post_item_categories, dependent: :destroy
  has_many :categories, through: :post_item_categories
  has_many :item_posts, dependent: :destroy
  has_many :posts, through: :item_posts

  mount_uploader :image, ItemImageUploader

  validates :name, presence: true
  #validates :price, presence: true
  #validates :image, presence: true
  validates :asin, uniqueness: true, allow_nil: true

  def self.search(search)
    return Item.all unless search
    Item.where(['name LIKE ?', "%#{search}%"])
  end
end
