class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @categories = Category.eager_load(:post_item_categories).where.not(ancestry: nil).where('post_item_categories.item_id IS NOT NULL')
    @items = Item.preload(:posts).eager_load(:post_item_category, :category).where(post_item_categories: {category_id: params[:id]}).page(params[:page])
    @posts = Post.eager_load(:post_item_category, :youtuber).where(post_item_categories: {category_id: params[:id]}).page(params[:page])
  end
end
