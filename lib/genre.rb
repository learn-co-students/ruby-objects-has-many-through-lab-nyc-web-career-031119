class Genre
    attr_accessor :name
    # , :artists, :songs

    ALL = []

    def initialize(name)
        @name = name
        ALL << self
    end

    def self.all
        ALL
    end

    def songs
        Song.all.select do |songs|
            songs.genre == self
        end
    end

    def artists
        songs.map do |my_songs|
            my_songs.artist
        end
    end
    
end