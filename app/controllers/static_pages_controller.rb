class StaticPagesController < ApplicationController
  def home
    @youtubers = Youtuber.all.order(id: :asc).limit(18)
    @posts = Post.eager_load(:youtuber, :item_posts).where.not(item_posts: {item_id: nil}).order(id: :desc).limit(8)
    @categories = Category.where(ancestry: nil)
    @recentry_update_date = Item.last.created_at.strftime("%m月%d日")
    @instagram_post = InstagramImage.where(created_at: Time.current.beginning_of_day..Time.current.end_of_day).first

    items = Item.eager_load(:item_posts).where(item_posts: {post_id: @instagram_post.post.id})
    @instagram_categories = Category.eager_load(:post_item_categories).where(post_item_categories: {item_id: items.pluck(:id)})
  end

  def terms
  end

  def privacy_policy
  end

  def administrator
  end
end