class Artist

  attr_accessor :name, :genres, :songs, :artist
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
    @@all << self
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
    @songs << song
    @genres << genre
    song
  end

  def self.all
    @@all
  end

end
