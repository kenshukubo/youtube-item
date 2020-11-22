class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @categories = Category.all
    @items = Item.includes([:post_item_categories, :item_posts]).where(post_item_categories: {category_id: params[:id]}).page(params[:page])
    @posts = Post.includes(:post_item_categories).where(post_item_categories: {category_id: params[:id]}).page(params[:page])
  end
end
