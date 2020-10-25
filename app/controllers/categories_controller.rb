class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @categories = Category.all

    @items = []
    item_categories = ItemCategory.where(category_id: params[:id])
    item_categories.find_each do |item_category|
      @items << Item.find(item_category.item_id)
    end
  end
end
