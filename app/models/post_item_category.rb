class PostItemCategory < ApplicationRecord
  belongs_to :item, optional: true
  belongs_to :post, optional: true
  belongs_to :category, optional: true
end
