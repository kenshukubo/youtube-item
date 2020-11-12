class RemovePostIdFromItem < ActiveRecord::Migration[6.0]
  def change
    remove_column :items, :post_id, :bigint
  end
end
