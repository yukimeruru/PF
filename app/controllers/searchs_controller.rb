class SearchsController < ApplicationController
  before_action :authenticate_user!

  def search
    @items = Item.looks(params[:search], params[:word])
    @pages = @items.page(params[:page]).per(12)
  end

end
