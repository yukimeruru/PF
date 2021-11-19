class BookmarksController < ApplicationController
  before_action :authenticate_user!

  def create
    @item = Item.find(params[:item_id])
    bookmark = @item.bookmarks.new(user_id: current_user.id)
    bookmark.save
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @item = Item.find(params[:item_id])
    bookmark = @item.bookmarks.find_by(user_id: current_user.id)
    bookmark.destroy
    redirect_back(fallback_location: root_path)
  end




end
