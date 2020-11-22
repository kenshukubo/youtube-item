class Api::V1::YoutubersController < ApplicationController
  def show
    @youtuber = Youtuber.find(params[:id])
    @posts = Post.includes([:item_posts, :items]).where(youtuber_id: params[:id]).order(id: :desc)
  end
end