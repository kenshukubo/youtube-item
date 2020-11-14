class Api::V1::WidgetController < ApplicationController
  def index
    @first_categories = Category.where(ancestry: nil)
  end
end