class Api::V1::HeaderMenuController < ApplicationController
  def index
    @first_categories = Category.where(name: "コスメ・化粧品", ancestry: nil)
    @post_categories = Category.where(ancestry: Category.find_by(name: "動画ネタ"))
  end
end