class ItemsController < ApplicationController

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.user_id = current_user.id
    @item.save
    redirect_to items_path
  end

  def edit
  end

  def update
  end

  def index
    @items = Item.all
    @items = Item.page(params[:page]).per(12)
  end

  def show
    @item = Item.find(params[:id])
  end

  def destroy
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :image, :item_status)
  end

end