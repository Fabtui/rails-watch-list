
def created_a_movie(title)
require 'json'
require 'open-uri'
url = "http://www.omdbapi.com/?apikey=869d756e&t=#{title}"
user_serialized = URI.open(url).read
user = JSON.parse(user_serialized)
puts "#{user["Title"]} - #{user["Year"]} - #{user["Genre"]} - #{user["Director"]} - #{user["Actors"]} - #{user["Plot"]} - #{user["Poster"]} - #{user["Value"]}"
end

created_a_movie("the dark knight")
