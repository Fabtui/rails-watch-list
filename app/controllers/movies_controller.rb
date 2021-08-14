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

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update(movie_params)

    # no need for app/views/movies/update.html.erb
    redirect_to movie_path(@movie)
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy

    # no need for app/views/movies/destroy.html.erb
    redirect_to movies_path
  end

  private

  def movie_params
    params.require(:movie).permit(:id, :title, :poster_url, :overview, :rating, :year, :youtube_url)
  end
end
