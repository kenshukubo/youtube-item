require 'google/apis/youtube_v3' #YoutubeV3を使用するために、呼び出す
require 'open-uri'

youtube = Google::Apis::YoutubeV3::YouTubeService.new
youtube.key = ENV["YOUTUBE_APIKEY"]

ids = [
  ['UeBXdnHjhXE', 1, 42],
  ['47YnnAAh3o0', 2, 42],
  ['uLSE9dJcBVI', 3, 42]
]

ids.each do |id|
  options = {
    :id => id[0] #YouTubeチャンネルのIDを指定
  }

  response = youtube.list_videos("snippet", options)

  title = response.items[0].snippet.title

  url = response.items[0].snippet.thumbnails.high.url
  file = "#{Rails.root}/db/images/video_image/#{id[1]}.png"
  open(file, 'wb') do |pass|
    open(url) do |recieve|
      pass.write(recieve.read)
    end
  end

  Post.create!(
    title: title, 
    thumbnail: open("#{Rails.root}/db/images/video_image/#{id[1]}.png"),
    video_id: "#{id[0]}",
    youtuber_id: id[2]
  )
end