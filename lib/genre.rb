require_relative '../lib/song.rb'
require_relative '../lib/artist.rb'
require 'pry'

class Genre

    attr_accessor :name

    @@all = []

    def initialize(name)
        self.name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |song|
            song.genre == self
        end
    end

    def artists
        self.songs.collect do |artists|
            artists.artist
        end
    end

end