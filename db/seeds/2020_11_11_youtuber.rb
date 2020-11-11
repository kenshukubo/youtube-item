require 'google/apis/youtube_v3' #YoutubeV3を使用するために、呼び出す
require 'open-uri'

youtube = Google::Apis::YoutubeV3::YouTubeService.new
youtube.key = ENV["YOUTUBE_APIKEY"]

ids = [
  ['UC8pMBOI9vXf6fIM670vdIPw', 1],
  ['UCkMs-Zr9pGixbqm0mhO8J7g', 2],
  ['UCOjmYCnYlTcdoD2DKHvrV5g', 3],
  ['UCC0JWiw4BJYR4NUDxQCf0Hg', 4],
  ['UCFTVNLC7ysej-sD5lkLqNGA', 5],
  ['UC__AsSnEuyVgO9TWvZE_ziA', 6],
  ['UCI0xPNkgivK-FCcaCYDC8Yg', 7],
  ['UCNIwy_Q7EjUxLlsewfuhjgg', 8],
  ['UCCuizDTLsr-mNm_PEGdChVg', 9],
  ['UC69xoWl5-Y3m-oRFTORIbKw', 10],
  ['UCMsuwHzQPFMDtHaoR7_HDxg', 11],
  ['UCgpq8b6bCzkSLquNQeSE6QQ', 12],
  ['UCXzU-b8I0Y_fhMkLQMYt3vA', 13],
  ['UCWvHd19P7d1hy0Qx5O-P2Dg', 14],
  ['UC3LAEwEhZ0Yn3l4-WatZo2Q', 15],
  ['UC4GMLPKC8TgfW1BtJ-0vf-Q', 16],
  ['UC3swo6utVXOSYwxazwoKWBQ', 17],
  ['UCm-m76oSXXj41CUxDwUeF4Q', 18],
  ['UClPLW-9Nfbvf76ksj-4c1kQ', 19],
  ['UC1fYrot9lgMstv7vX0BnjnQ', 20],
  ['UCxS4vbIvtjHQcEW61J2KQIw', 21],
  ['UCw7HTQv0F4CB9zGRhqosYsg', 22],
  ['UCxlsYyeri8MOpap3w3JbWSQ', 23],
  ['UCfCY70zRsvnnKzQ39mBq0rw', 24]
]

ids.each do |id|
  options = {
    :id => id[0] #YouTubeチャンネルのIDを指定
  }

  date = 20201111
  response = youtube.list_channels("snippet", options)

  title = response.items[0].snippet.title

  url = response.items[0].snippet.thumbnails.default.url
  file = "#{Rails.root}/db/#{date}/#{id[1]}.png"
  open(file, 'wb') do |pass|
    open(url) do |recieve|
      pass.write(recieve.read)
    end
  end

  Youtuber.create!(
    name: title, 
    image: open("#{Rails.root}/db/images/channel_icon/#{id[1]}.png"),
    channel_id: "#{id[0]}"
  ) if Youtuber.find_by(name: title).blank?
end