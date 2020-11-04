class SearchesController < ApplicationController
  def index
    @search = params[:search]
    @youtubers = Youtuber.search(params[:search])
    @posts = Post.search(params[:search])
    @items = Item.search(params[:search])
  end
end
