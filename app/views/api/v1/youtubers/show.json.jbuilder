json.posts do
  json.array!(@posts) do |post|
    json.title post.title
    json.thumbnail_url post.thumbnail.thumb_mini.url
    json.items Item.where(post_id: post.id)
    json.items_num Item.where(post_id: post.id).count
  end
end