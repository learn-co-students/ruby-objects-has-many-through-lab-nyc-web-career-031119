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
end
