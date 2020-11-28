class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @categories = Category.all
    @items = Item.preload(:posts, :categories).eager_load(:post_item_categories).where(post_item_categories: {category_id: params[:id]}).page(params[:page])
    @posts = Post.eager_load(:post_item_categories, :youtuber).where(post_item_categories: {category_id: params[:id]}).page(params[:page])
  end
end
