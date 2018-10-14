# require_relative './song'
# require_relative './genre'

class Artist
    attr_accessor :name, :song_name, :genre

    @@all = []
    
    def initialize(name)
        self.name = name
        @@all << self 
    end 

    def self.all
        @@all 
    end

    def new_song(song_name, genre)
        Song.new(song_name, self, genre)
    end

    def songs
        Song.all.select do | song |
            song.artist == self 
        end 
    end

    def genres
        self.songs.map do | song |
            song.genre
        end
    end

end