class Song
    attr_accessor :name, :artist, :songs, :genre
    ALL = []
    def initialize(name, artist, genre)
        @name = name
        @genre = genre
        @artist = artist
        ALL << self
    end

    def self.all
        ALL        
    end
end