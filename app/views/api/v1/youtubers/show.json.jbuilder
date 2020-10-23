json.posts do
  json.array!(@posts) do |post|
    json.title post.title
    json.thumbnail_url post.thumbnail.thumb_mini.url
    json.items Item.where(post_id: post.id)
    json.items_num Item.where(post_id: post.id).count
    json.video_id post.video_id
  end
end

json.youtuber do
  json.name @youtuber.name
  json.image @youtuber.image.url
  json.channelId @youtuber.channel_id
end