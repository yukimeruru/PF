class OrdersController < ApplicationController

  def new
  end

  def create
  end

  def reply
  end

  def index
  end

  def show
  end

  def destroy
  end
  
  private
  
  def orders_params
    params.require(:orders).permit(:user_id, :item_id, :order_comment, :comment_status, :image)
  end
  
end
