class ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      flash[:success] = "保存に成功しました！"
      redirect_to 'static_pages/home'
    else
      render "new"
    end
  end

  private
    def item_params
      params.require(:item).permit(:name, :image, :category, :price, :amazon_url, :rakuten_url, :url)
    end
end
