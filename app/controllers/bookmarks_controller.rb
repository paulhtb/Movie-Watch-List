class BookmarksController < ApplicationController
  before_action :set_movie, only: %w[new create]

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.movie = @movie

    if @bookmark.save
      # redirect_to list_path(@bookmark.list)
    else
      # render :new
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @list = @bookmark.list

    @bookmark.destroy

    redirect_to list_path(@list)
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:list_id)
  end

  def set_movie
    @movie = Movie.find(params[:movie_id])
  end
end
