require 'pry'

class Artist
    attr_accessor :name

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        self.name = name
        @@all << self
    end

    def new_song(artist, genre)
        song = Song.new(artist, self, genre)
    end

    def songs
        Song.all.select do | song |
            song.artist == self
        end
    end

    def genres
        genre_array = []
        self.songs.each do |artist_song|
            genre_array << artist_song.genre
        end
        genre_array
    end
end
0