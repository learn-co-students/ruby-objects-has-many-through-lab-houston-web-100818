class Song
    attr_accessor :title, :artist, :genre

    @@all = []
    def self.all
        @@all
    end 

    def initialize(title, artist, genre)
        self.title = title
        self.artist = artist
        self.genre = genre
        @@all << self
    end
end