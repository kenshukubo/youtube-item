require 'google/apis/youtube_v3' #YoutubeV3を使用するために、呼び出す
class YoutubersController < ApplicationController
  
  def index
    # youtube = Google::Apis::YoutubeV3::YouTubeService.new
    # youtube.key = ENV["YOUTUBE_APIKEY"]

    # youtubers = Youtuber.all
    # youtubers.find_each do |youtuber|
    # end
    # options = {
    #   :channel_id => 'UCkMs-Zr9pGixbqm0mhO8J7g' #YouTubeチャンネルのIDを指定
    # }

    # response = youtube.list_searches("snippet", options)

    # @channnel_icon = response.items[0].snippet.thumbnails.medium.url

    youtube = Google::Apis::YoutubeV3::YouTubeService.new
    youtube.key = ENV["YOUTUBE_APIKEY"]

    ids = [
      "UC8pMBOI9vXf6fIM670vdIPw/videos",
      "UCkMs-Zr9pGixbqm0mhO8J7g",
      "UCFdBehO71GQaIom4WfVeGSw",
    ]

    
    options = {
      :id => "UC8pMBOI9vXf6fIM670vdIPw" #YouTubeチャンネルのIDを指定
    }

    response = youtube.list_channels("snippet", options)
    puts Youtuber.last.image
    @title = response.items[0].snippet.thumbnails.default.url
  end

end
