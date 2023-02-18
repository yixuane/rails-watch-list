class BookmarksController < ApplicationController
  def index
  end

  def show
  end

  def create
    @bookmark = Bookmark.create(bookmark_params)
    redirect_to list_path(params[:list_id])
  end

  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id, :list_id)
  end
end
