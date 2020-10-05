class Item < ApplicationRecord
  belongs_to :posts

  validates :name, presence: true
  validates :price, presence: true
  validates :post_id, presence: true
end
