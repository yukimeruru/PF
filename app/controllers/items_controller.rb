class ItemsController < ApplicationController

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def index
  end

  def show
  end

  def destroy
  end

  private

  def items_params
    params.require(:items).permit(:name, :description, :image, :item_status, :user_id)
  end

end
