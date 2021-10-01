user1 = User.create(email: "toto@mail.com", nickname: "toto", password: "azerty")
user2 = User.create(email: "titi@mail.com", nickname: "titi", password: "azerty")

reservoir = Movie.create(title: "Reservoir Dogs",
                    overview: "When a simple jewelry heist goes horribly wrong, the surviving criminals begin to suspect that one of them is a police informant.",
                    poster_url: "https://m.media-amazon.com/images/M/MV5BZmExNmEwYWItYmQzOS00YjA5LTk2MjktZjEyZDE1Y2QxNjA1XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg",
                    rating: "8.3/10",
                    year: "1992",
                    youtube_url: "https://www.youtube.com/embed/GyR4RK0LA_E",
                    director: "Quentin Tarantino",
                    actor: "Harvey Keitel, Tim Roth, Michael Madsen",
                    genre: "Crime, Drama, Thriller",
                    seen: false,
                    user_id: 1)

pulp = Movie.create(title: "Pulp Fiction",
                    overview: "The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.",
                    poster_url: "https://m.media-amazon.com/images/M/MV5BNGNhMDIzZTUtNTBlZi00MTRlLWFjM2ItYzViMjE3YzI5MjljXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg",
                    rating: "8.9/10",
                    year: "1994",
                    youtube_url: "https://www.youtube.com/embed/WSLMN6g_Od4",
                    director: "Quentin Tarantino",
                    actor: "John Travolta, Uma Thurman, Samuel L. Jackson",
                    genre: "Crime, Drama",
                    seen: false,
                    user_id: 1)

puts "#{User.count} users created"
puts "#{Movie.count} movies created"
