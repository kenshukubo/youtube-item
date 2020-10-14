class StaticPagesController < ApplicationController
  def home
    @youtubers = Youtuber.all.order(id: :desc)
  end
end