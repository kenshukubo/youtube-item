class Youtuber < ApplicationRecord
  has_many :posts, dependent: :destroy

  validates :name, presence: true

  enum sex:       {boy: 1, girl: 2}
  enum category:  {streamer: 1, actor: 2, actress: 3, fashion_model: 4, entertainer: 5, idol: 6}
end
