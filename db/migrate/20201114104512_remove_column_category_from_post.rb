class RemoveColumnCategoryFromPost < ActiveRecord::Migration[6.0]
  def change
    remove_column :posts, :category, :integer
  end
end
