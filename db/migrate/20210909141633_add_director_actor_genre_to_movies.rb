class AddDirectorActorGenreToMovies < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :director, :string
    add_column :movies, :actor, :string
    add_column :movies, :genre, :string
  end
end
