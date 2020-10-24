class YoutubersController < ApplicationController
  
  def index
    @youtubers = Youtuber.all.order(id: :desc)
  end

end
