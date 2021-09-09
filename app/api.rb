
def created_a_movie(title)
require 'json'
require 'open-uri'
url = "http://www.omdbapi.com/?apikey=869d756e&t=#{title}"
user_serialized = URI.open(url).read
user = JSON.parse(user_serialized)
puts user["Ratings"][0]["Value"]
end

created_a_movie("the dark knight")
