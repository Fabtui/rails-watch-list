class Api::V1::MoviesController < ApplicationController
  def index
    @movies = Movie.all
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
