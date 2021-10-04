class Api::V1::MoviesController < ApplicationController
  def index
    # sql_query = " \
    #   movies.title ILIKE :query \
    #   OR movies.overview ILIKE :query \
    #   OR movies.actor ILIKE :query \
    #   OR movies.director ILIKE :query \
    # "
    # @movies = @user_movies.where(sql_query, query: "%#{params[:query]}%")
    @user_movies = Movie.where(user_id: current_user.id)
    @movies = @user_movies.order("title ASC")
    render json: @movies
  end

  def show
    @movie = Movie.find(params[:id])
    render json: @movie
  end

  def create
    @movie = Post.create(post_params)
    render json: @movie
  end

  private

  def post_params
    params.require(:movie).permit(:id, :title, :poster_url, :overview, :rating, :year, :youtube_url, :seen, :seen_date)
  end
end
