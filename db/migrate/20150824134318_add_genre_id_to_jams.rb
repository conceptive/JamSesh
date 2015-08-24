class AddGenreIdToJams < ActiveRecord::Migration
  def change
    add_column :jams, :genre_id, :integer
  end
end
