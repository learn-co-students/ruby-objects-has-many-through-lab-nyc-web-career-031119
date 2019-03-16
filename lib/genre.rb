class Genre

  attr_accessor :name, :song

  @@all = []

  def initialize(name)
    @song = song
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    songs.map do |artists|
      artists.artist
    end
  end
end
