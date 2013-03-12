class RemoveArtistNameFromSong < ActiveRecord::Migration
  def up
  	remove_column :songs, :artist_name
  end

  def down
  end
end
