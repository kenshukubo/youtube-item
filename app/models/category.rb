class Category < ApplicationRecord
  has_ancestry
  has_many :item_categories, dependent: :destroy
  has_many :items, through: :item_categories

  mount_uploader :image, CategoryImageUploader

end
