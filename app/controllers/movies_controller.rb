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
    create_a_movie(params[:movie][:title])
    @movie = Movie.new
    @movie.title = @movie_api["Title"]
    @movie.overview = @movie_api["Plot"]
    @movie.poster_url = @movie_api["Poster"]
    @movie.rating = @movie_api["Value"]
    @movie.year = @movie_api["Year"]
    if @movie.save
      redirect_to movies_path
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

  def create_a_movie(title)
    require 'json'
    require 'open-uri'
    url = "http://www.omdbapi.com/?apikey=869d756e&t=#{title}"
    movie_api_serialized = URI.open(url).read
    @movie_api = JSON.parse(movie_api_serialized)
    # puts "#{user["Title"]} - #{user["Year"]} - #{user["Genre"]} - #{user["Director"]} - #{user["Actors"]} - #{user["Plot"]} - #{user["Poster"]} - #{user["Value"]}"
  end
end
