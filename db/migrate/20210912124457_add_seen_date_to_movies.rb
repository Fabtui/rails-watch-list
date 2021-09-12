class AddSeenDateToMovies < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :seen_date, :datetime
  end
end
