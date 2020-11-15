ItemPost.create!(post_id: 2, item: Item.find_by(asin: 'B07WR6GXN9')) if ItemPost.find_by(post_id: 2, item: Item.find_by(asin: 'B07WR6GXN9')).blank?
ItemPost.create!(post_id: 2, item: Item.find_by(asin: 'B01J1ZBJSG')) if ItemPost.find_by(post_id: 2, item: Item.find_by(asin: 'B01J1ZBJSG')).blank?
ItemPost.create!(post_id: 2, item_id: 8) if ItemPost.find_by(post_id: 2, item_id: 8).blank?
ItemPost.create!(post_id: 2, item_id: 9) if ItemPost.find_by(post_id: 2, item_id: 9).blank?