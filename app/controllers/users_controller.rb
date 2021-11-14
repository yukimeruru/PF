class UsersController < ApplicationController

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  def index
    @users = User.page(params[:page]).per(10)
    @item = Item.all.order("id DESC").limit(4)
  end

  def show
    @user = User.find(params[:id])
    @items = Item.page(params[:page]).per(8)
  end

  def out
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :image)
  end

end
