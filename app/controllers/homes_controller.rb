class HomesController < ApplicationController

  def top
    @items = Item.all.order("id DESC").limit(6)
  end

  def about
  end

end
