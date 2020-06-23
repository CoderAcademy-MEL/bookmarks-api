class BookmarksController < ApplicationController
  def index 
    @bookmarks = Bookmark.all
    render json: @bookmarks
  end 

  def create 
    Bookmark.create(bookmark_params)
    head 200
  end 

  private 

  def bookmark_params 
    params.require(:bookmark).permit(:title, :description, :url)
  end 
end