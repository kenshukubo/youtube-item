class SearchesController < ApplicationController
  def index
    @search = params[:search]
  end
end
