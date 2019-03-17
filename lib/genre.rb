class Genre

  attr_accessor :name, :songs, :artist

  @@all = []
  def initialize(name)
    @name = name
    @songs = []
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
    Song.all.each do |song|
      puts song.first
      # song.artist == self.artist
    end
  end
end
