class Artist
  attr_reader :name, :genre, :song
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    new = Song.new(name, self, genre)
    new.artist = self
    new
  end

  def songs
    Song.all.select do
      |song| song.artist == self
    end
  end

  def genres
    songs.map do
      |song| song.genre
    end
  end

end
