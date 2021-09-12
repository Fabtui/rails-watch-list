class MoviesController < ApplicationController
  def index
    if params[:query].present?
      sql_query = " \
        movies.title ILIKE :query \
        OR movies.overview ILIKE :query \
        OR movies.actor ILIKE :query \
        OR movies.director ILIKE :query \
      "
      @movies = Movie.where(sql_query, query: "%#{params[:query]}%")
    else
      @movies = Movie.order("title ASC")
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def seen
    @seen_movies = Movie.where(seen: true).order("title ASC")
    @unseen_movies = Movie.where(seen: false).order("title ASC")
  end

  def new
    @movie = Movie.new
  end

  def create
    create_a_movie(params[:movie][:title])
    @movie = Movie.new
    if params[:movie][:youtube_url].present?
      create_youtube_link(params[:movie][:youtube_url])
    end
    @movie.title = @movie_api["Title"]
    @movie.overview = @movie_api["Plot"]
    @movie.poster_url = @movie_api["Poster"]
    if @movie_api["Ratings"][0]["Value"].present?
      @movie.rating = @movie_api["Ratings"][0]["Value"]
    end
    @movie.year = @movie_api["Year"]
    @movie.actor = @movie_api["Actors"]
    @movie.director = @movie_api["Director"]
    @movie.genre = @movie_api["Genre"]
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
    @movie.save

    redirect_to movie_path(@movie)
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy

    # no need for app/views/movies/destroy.html.erb
    redirect_to movies_path
  end

  private

  def create_youtube_link(url)
    pattern = /^(?<youtube>https:\/\/\youtu.be\/)(?<link>.*)$/
    match_data = url.match(pattern)
    @movie.youtube_url = match_data[:link]
  end

  def movie_params
    params.require(:movie).permit(:id, :title, :poster_url, :overview, :rating, :year, :youtube_url, :seen, :seen_date)
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
