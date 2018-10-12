class Genre
    attr_accessor :name

    @@all = []
    def self.all    
        @@all
    end

    def initialize(name)
        self.name = name
        @@all << self
    end

    def songs
        Song.all.select do | song |
            song.genre == self
        end
    end

    def artists
        artist_array = []

        songs.select do |genre_song|
            artist_array << genre_song.artist
        end

        artist_array
    end
end