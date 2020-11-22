json.posts do
  json.array!(@posts) do |post|
    json.title         post.title
    json.thumbnail_url post.thumbnail.thumb_mini.url
    json.items         post.items
    json.items_num     post.item_posts.count
    json.video_id      post.video_id
  end
end

json.youtuber do
  json.name       @youtuber.name
  json.image      @youtuber.image.url
  json.channelId  @youtuber.channel_id
end