class Item < ApplicationRecord
  belongs_to :post

  validates :name, presence: true
  validates :price, presence: true
  validates :post_id, presence: true
end
