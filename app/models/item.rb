class Item < ApplicationRecord
  belongs_to :post
  
  has_many :item_categories, dependent: :destroy
  has_many :categories, through: :item_categories

  mount_uploader :image, ItemImageUploader

  validates :name, presence: true
  # validates :price, presence: true
  #validates :image, presence: true
  #validates :amazon_url, presence: true
  validates :post_id, presence: true
end
