json.posts do
  json.array!(@posts) do |post|
    json.title post.title
    json.items Item.where(post_id: post.id)
  end
end