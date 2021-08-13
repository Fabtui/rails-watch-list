class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to lists_path
    else render :new
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:id, :title, :poster_url, :overview, :rating)
  end
end
