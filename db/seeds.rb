# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

# require 'json'
# require 'open-uri'

# def create_a_movie(url)
#   response = open(url).read
#   movie = JSON.parse(response)
#   poster_path = movie["poster_path"]

#   Movie.create!(
#     title: movie["original_title"],
#     overview: movie["overview"],
#     poster_url: "https://image.tmdb.org/t/p/w500#{poster_path}",
#     rating: movie["vote_average"],
#   )
#   p movie["original_title"]
# end

# create_a_movie("https://api.themoviedb.org/3/movie/550?api_key=e2c8e4b34d8775e5a745b29fe215157f")
# create_a_movie("https://api.themoviedb.org/3/movie/500?api_key=e2c8e4b34d8775e5a745b29fe215157f")
# create_a_movie("https://api.themoviedb.org/3/movie/670?api_key=e2c8e4b34d8775e5a745b29fe215157f")
# create_a_movie("https://api.themoviedb.org/3/movie/530?api_key=e2c8e4b34d8775e5a745b29fe215157f")
# create_a_movie("https://api.themoviedb.org/3/movie/600?api_key=e2c8e4b34d8775e5a745b29fe215157f")
