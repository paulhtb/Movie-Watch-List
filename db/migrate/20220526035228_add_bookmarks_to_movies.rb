class AddBookmarksToMovies < ActiveRecord::Migration[6.1]
  def change
    add_reference :movies, :bookmarks, null: false, foreign_key: true
  end
end
