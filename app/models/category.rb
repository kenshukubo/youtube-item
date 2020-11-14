class Category < ApplicationRecord
  has_ancestry
  has_many :post_item_categories, dependent: :destroy
  has_many :items, through: :post_item_categories
  has_many :posts, through: :post_item_categories

  validates :name, presence: true

  mount_uploader :image, CategoryImageUploader

  scope :order_by_chiledren_item_category, -> {
    where.not(ancestry: nil).joins(:post_item_categories).group(:id).order('count(item_id) desc')
  }
end
