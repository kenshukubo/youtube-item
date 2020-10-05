class Post < ApplicationRecord
  belongs_to :youtuber
  has_many :items, dependent: :destroy

  validates :title, presence: true
  validates :youtuber_id, presence: true
end
