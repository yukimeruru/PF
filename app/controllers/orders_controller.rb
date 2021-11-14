class OrdersController < ApplicationController

  def new
    @order = Order.new
    @item = Item.find(params[:id])
  end

  def create
    @order = Order.new(order_params)
    @order.save
    redirect_to item_path(@order)
  end

  def reply
    @order = Order.new
  end

  def index
    @user = User.find(params[:id])
    @orders = @user.orders.reverse_order
  end

  def show
    @order = Order.find(params[:id])
  end

  def destroy
  end

  private

  def order_params
    params.require(:order).permit(:user_id, :item_id, :order_comment, :comment_status, :image, :creater_id)
  end

end
