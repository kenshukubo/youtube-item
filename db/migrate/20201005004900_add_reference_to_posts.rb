class AddReferenceToPosts < ActiveRecord::Migration[6.0]
  def change
    add_reference :posts, :youtuber, index: true, foreign_key: true
  end
end
