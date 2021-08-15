class RemovePosterUrlFromTableLists < ActiveRecord::Migration[6.1]
  def change
    remove_column :lists, :poster_url
  end
end
