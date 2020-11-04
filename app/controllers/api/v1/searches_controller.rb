class Api::V1::SearchesController < ApplicationController
  def index
    @youtubers = Youtuber.search(params[:search]).limit(20)
    @posts = Post.search(params[:search]).limit(20)
    @items = Item.search(params[:search]).limit(20)
  end
end