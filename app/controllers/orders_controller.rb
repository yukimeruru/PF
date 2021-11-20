class OrdersController < ApplicationController

  def new
    @order = Order.new
    @item = Item.find(params[:id])
  end

  def create
    @order = Order.new(order_params)
    @order.user_id = current_user.id
    @order_item = @order.item
    if @order.save
      @order_item.create_notification_order!(current_user, @order.id)
      redirect_to items_path
    else
      render :new
    end
  end

  def reply
    @order = Order.new
    @order_date = Order.find(params[:id])
  end

  def index
    @user = User.find(params[:id])
    @orders = @user.orders
  end

  def show
    @order = Order.find(params[:id])
  end

  def destroy
    Order.find_by(id: params[:id]).destroy
    redirect_to items_path(params[:item_id])
  end

  private

  def order_params
    params.require(:order).permit(:user_id, :item_id, :order_comment, :comment_status,)
  end

end
