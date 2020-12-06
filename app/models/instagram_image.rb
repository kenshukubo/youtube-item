class InstagramImage < ApplicationRecord
  belongs_to :post

  validates :post_id, presence: true
  validates :image, presence: true

  mount_uploader :image, InstagramImageUploader
end
