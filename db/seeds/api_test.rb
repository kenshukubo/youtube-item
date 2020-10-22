require 'google/apis/youtube_v3' #YoutubeV3を使用するために、呼び出す
require 'open-uri'

youtube = Google::Apis::YoutubeV3::YouTubeService.new
youtube.key = ENV["YOUTUBE_APIKEY"]

ids = [
  ['UC8pMBOI9vXf6fIM670vdIPw', 1],
  ['UCkMs-Zr9pGixbqm0mhO8J7g', 2],
  ['UCOjmYCnYlTcdoD2DKHvrV5g', 3]
]

ids.each do |id|
  options = {
    :id => id[0] #YouTubeチャンネルのIDを指定
  }

  response = youtube.list_channels("snippet", options)

  title = response.items[0].snippet.title

  url = response.items[0].snippet.thumbnails.default.url
  file = "#{Rails.root}/db/images/channel_icon/#{id[1]}.png"
  open(file, 'wb') do |pass|
    open(url) do |recieve|
      pass.write(recieve.read)
    end
  end

  Youtuber.create!(
    name: title, 
    image: open("#{Rails.root}/db/images/channel_icon/#{id[1]}.png"),
    channel_id: "#{id[0]}"
  )
end