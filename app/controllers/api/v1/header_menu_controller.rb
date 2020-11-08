class Api::V1::HeaderMenuController < ApplicationController
  def index
    @categories = Category.where(ancestry: nil)
    @children_categories = Category.order_by_chiledren_item_category
  end
end