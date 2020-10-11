class Youtuber < ApplicationRecord
  has_many :posts, dependent: :destroy

  validates :name, presence: true

  enum sex:       {men: 1, women: 2}
  enum category:  {youtuber: 1, actor: 2, actress: 3, model: 4, entertainer: 5}
end
