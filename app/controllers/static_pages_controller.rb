class StaticPagesController < ApplicationController
  def home
    @youtubers = Youtuber.all.order(id: :desc).limit(18)
    @posts = Post.all.includes(:youtuber).order(id: :desc).limit(8)
    @categories = Category.where(ancestry: nil)
    @recentry_update_date = Post&.last&.created_at&.strftime("%m月%d日")
  end

  def terms
  end

  def privacy_policy
  end

  def administrator
  end
end