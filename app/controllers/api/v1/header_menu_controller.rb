class Api::V1::HeaderMenuController < ApplicationController
  def index
    @first_categories = Category.where(ancestry: nil)
  end
end