class Song < ActiveRecord::Base
  attr_accessible :name, :artist_name, :album_name
end