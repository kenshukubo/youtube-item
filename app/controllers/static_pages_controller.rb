class StaticPagesController < ApplicationController
  def home
    @youtubers = Youtuber.all.order(id: :desc).limit(20)
    @posts = Post.all.order(id: :desc)
    @categories = Category.where(ancestry: nil)
  end

  def terms
  end

  def privacy_policy
  end
end