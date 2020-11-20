class YoutubersController < ApplicationController

  def index
    @youtubers = Youtuber.all.order(id: :desc).page(params[:page])
  end

  def show
    @youtuber = Youtuber.find_by(params[:id])
  end

end
