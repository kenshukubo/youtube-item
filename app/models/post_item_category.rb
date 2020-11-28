class PostItemCategory < ApplicationRecord
  belongs_to :item, optional: true
  belongs_to :post, optional: true
  belongs_to :category, optional: true

  validates :item_id, presence: true, if: -> { post_id.blank? }
  validates :post_id, presence: true, if: -> { item_id.blank? }
end
