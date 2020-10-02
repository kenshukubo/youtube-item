class Api::V1::PostsController < ApplicationController
  def index
    @posts = Post.all.order(id: :desc)
  end
end