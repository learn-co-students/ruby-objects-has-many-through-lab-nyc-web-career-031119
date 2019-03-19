class Artist

    attr_accessor :name, :artist, :genre
    @@all = []

    def initialize(name)
    @name = name
    @@all << self
    end

    def self.all
      @@all
    end

    def songs
      Song.all.select {|song| song.artist == self}
    end

    
    def new_song(song, genre)
      Song.new(name, self, genre)
    end

    def genres
    Song.all.map do |song|
      song.genre
      end
    end

end
