class YoutubersController < ApplicationController
  
  def index
    @youtubers = Youtuber.all.order(id: :desc).page(params[:page])
  end

end
