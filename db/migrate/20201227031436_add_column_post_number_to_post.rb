class AddColumnPostNumberToPost < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :post_number, :integer
  end
end
