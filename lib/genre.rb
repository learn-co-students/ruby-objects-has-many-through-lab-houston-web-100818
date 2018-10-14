class Genre

    attr_accessor :name
    @@all = []


    def initialize(name)
        self.name = name
        @@all << self
    end

    def songs
        Song.all.select do |song|
            song.genre == self
        end
    end

    def artists
        self.songs.collect do |song|
            song.artist
        end
    end

    def self.all
        @@all
    end


end










    # def new_song(name, artist, genre)
    #     song = Song.new(name, artist, self)
    #     #song.artist = self
    #     @songs << song
    # end
    
    # def add_song(song)
    #     @songs << song
    # end
    










