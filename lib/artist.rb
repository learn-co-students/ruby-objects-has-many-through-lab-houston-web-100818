class Artist
@@all = []

attr_accessor :name

def initialize(name)
    self.name = name
    @@all << self
end


def new_song(name, genre)
    Song.new(name, self, genre) 
end


def songs
    Song.all.select do |song|
        song.artist == self
    end
end

def genres
    self.songs.collect do |song|
        song.genre
    end
end

def self.all
    @@all

end

end

#didnt need :song or genre








# def add_song(song)
#     @songs << song
#     song.artist = self
# end

# def songs
#     Song.all.select do |song|
#         song.artist == self
#     end
# end

# def genres
#     songs.map do |song|
#         song.genre
#     end
# end





