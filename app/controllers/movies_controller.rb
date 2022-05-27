class MoviesController < ApplicationController
  def index
    if params['movie']
      @movies = Movie.where('title iLIKE ?', "%#{params[:movie]}%")
    else
      @movies = Movie.all
    end

  end

  def show
    @movie = Movie.find(params[:id])
    @lists = List.all
  end
end
