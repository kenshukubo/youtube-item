class ItemPost < ApplicationRecord
  belongs_to :item
  belongs_to :post

  validates :item_id, presence: true, if: -> { post_id.blank? }
  validates :post_id, presence: true, if: -> { item_id.blank? }
end
