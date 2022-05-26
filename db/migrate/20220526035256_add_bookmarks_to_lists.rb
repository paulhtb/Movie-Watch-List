class AddBookmarksToLists < ActiveRecord::Migration[6.1]
  def change
    add_reference :lists, :bookmarks, null: false, foreign_key: true
  end
end
