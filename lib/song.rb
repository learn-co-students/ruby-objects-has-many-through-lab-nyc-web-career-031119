require 'pry'
class Song

  attr_accessor :artist, :name, :genre
  @@all = []

  def initialize(artist, name, genre)
    @artist = artist
    @name = name
    @genre = genre
    @@all << self
  end

  def self.all
    @@all
  end

end
