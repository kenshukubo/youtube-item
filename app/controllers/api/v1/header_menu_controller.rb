class Api::V1::HeaderMenuController < ApplicationController
  def index
    @categories = Category.all
  end
end