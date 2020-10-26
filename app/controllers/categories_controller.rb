class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @categories = Category.all
    @items = Item.includes(:item_categories).where(item_categories: {category_id: params[:id]})
  end
end
