class AddSeenToMovies < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :seen, :boolean, :default => false
  end
end
