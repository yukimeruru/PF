class OrdersController < ApplicationController

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @order.user_id = current_user.id
    @order.item_id = Item.find(params[:id])
    @order.save
    redirect_to item_path(@order)
  end

  def reply
  end

  def index
    @order = Order.all
  end

  def show
  end

  def destroy
  end

  private

  def order_params
    params.require(:order).permit(:user_id, :item_id, :order_comment, :comment_status, :image)
  end

end
