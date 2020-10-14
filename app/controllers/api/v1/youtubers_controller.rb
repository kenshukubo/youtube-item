class Api::V1::YoutubersController < ApplicationController
  def show
    @posts = Post.where(youtuber_id: params[:id]).order(id: :desc)
  end
end