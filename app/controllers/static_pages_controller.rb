class StaticPagesController < ApplicationController
  def home
    @youtubers = Youtuber.all.order(id: :asc).limit(18)
    @posts = Post.eager_load(:youtuber).order(id: :desc).limit(8)
    @categories = Category.where(ancestry: nil)
    @recentry_update_date = Item.last.created_at.strftime("%m月%d日")
  end

  def terms
  end

  def privacy_policy
  end

  def administrator
  end
end