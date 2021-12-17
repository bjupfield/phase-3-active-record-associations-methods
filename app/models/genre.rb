class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.length
  end

  def artist_count
    self.songs.map do |songs|
    songs.artist
    end.uniq.length
  end

  def all_artist_names
    artists.all.map do |artist|
      artist.name
    end
  end
end
