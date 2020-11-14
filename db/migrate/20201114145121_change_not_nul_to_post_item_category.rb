class ChangeNotNulToPostItemCategory < ActiveRecord::Migration[6.0]
  def up
    # Not Null制約を外す(NULLがOK)
    change_column_null :post_item_categories, :item_id, true
  end

  def down
    # Not Null制約を付ける(NULLがNG)
    change_column_null :post_item_categories, :item_id, false
  end
end
