class PostsController < ApplicationController

  def index
    @posts = Post.all.includes(:youtuber).order(id: :desc).page(params[:page])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:success] = "保存に成功しました！"
      redirect_to 'static_pages/home'
    else
      render "new"
    end
  end

  def show
    @post = Post.find(params[:id])
    @items = Item.joins(:item_posts).where(item_posts: {post_id: @post.id})
  end

  private
    def post_params
      params.require(:post).permit(:title, :thumbnail, :category, :youtuber_id)
    end

end
