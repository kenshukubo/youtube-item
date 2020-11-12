require 'google/apis/youtube_v3' #YoutubeV3を使用するために、呼び出す
require 'open-uri'

youtube = Google::Apis::YoutubeV3::YouTubeService.new
youtube.key = ENV["YOUTUBE_APIKEY"]

ids = [
  ['UeBXdnHjhXE', 1, 1, 'morning_routin'],
  ['47YnnAAh3o0', 2, 1, nil],
  ['uLSE9dJcBVI', 3, 1, nil],
  ['vTeUxlZapeM', 4, 2, 'home_time'],
  ['4EAt82vGlFA', 5, 2, nil]
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

  date = 20201112

  Post.create!(
    title: title, 
    thumbnail: open("#{Rails.root}/db/#{date}/#{id[1]}.png"),
    video_id: "#{id[0]}",
    youtuber_id: id[2],
    category: id[3]
  ) if Post.find_by(video_id: id[0]).blank?
end