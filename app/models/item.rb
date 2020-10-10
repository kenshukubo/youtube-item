class Item < ApplicationRecord
  belongs_to :post

  mount_uploader :image, ItemImageUploader

  validates :name, presence: true
  validates :price, presence: true
  validates :post_id, presence: true
end
