class BookmarksController < ApplicationController
  def new
    @list = List.find(params[:list_id]) # usar esse id por conta da rota #
    @bookmark = Bookmark.new
  end

  def create
    @list = Restaurant.find(params[:list_id])
    @bookmark = Bookmark.new(bookmark_params)

    redirect_to list_path(@list)
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment)
  end
end
