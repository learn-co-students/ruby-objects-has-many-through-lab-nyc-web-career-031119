class Genre

  attr_accessor :name
  @@songs = []
  def initialize(name)
    @name = name
    @@songs << self
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def self.all
    @@songs
  end

  def artists
    Song.all.map do |song|
      song.artist
    end
  end

end
