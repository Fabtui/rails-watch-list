class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @movies = Movie.all
    @lists = List.all
  end
end
