class StaticPagesController < ApplicationController
  def home
    @youtubers = Youtuber.all.order(id: :desc)
    @posts = Post.all.order(id: :desc)
    @categories = Category.where(ancestry: nil)
  end
end