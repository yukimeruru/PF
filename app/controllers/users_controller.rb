class UsersController < ApplicationController

  def edit
  end

  def update
  end

  def index
  end

  def show
  end

  def out
  end

  def destroy
  end

  private

  def users_params
    params.require(:users).permit(:name, :email, :password)
  end

end
