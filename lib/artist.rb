class Artist
    attr_accessor :name
    ALL = []

    def initialize(name)
        @name = name
        ALL << self
        @songs = []
    end
    def self.all
        ALL        
    end

    def songs
        Song.all.select do |songs|
            songs.artist == self
        end
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end
    def genres
        songs.map do | my_songs|
            my_songs.genre
        end
    end

end