class Api::V1::YoutubersController < ApplicationController
  def show
    @youtuber = Youtuber.find(params[:id])
    @posts = Post.preload(:items).eager_load(:item_posts).where(youtuber_id: params[:id]).where('item_posts.item_id IS NOT NULL').order(id: :desc)
  end
end