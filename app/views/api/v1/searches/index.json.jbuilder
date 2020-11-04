json.youtubers do
  json.array!(@youtubers) do |youtuber|
    json.name youtuber.name
    json.image youtuber.image.url
    json.id youtuber.id
  end
end

json.posts do
  json.array!(@posts) do |post|
    json.title post.title
    json.thumbnail_url post.thumbnail.thumb_mini.url
  end
end

json.items do
  json.array!(@items) do |item|
    json.name item.name
    json.image item.image.url
  end
end