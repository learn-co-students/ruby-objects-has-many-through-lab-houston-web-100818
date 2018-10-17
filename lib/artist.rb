require_relative '../lib/song.rb'
require_relative '../lib/genre.rb'
require 'pry'

class Artist

    attr_accessor :name

    @@all = []

    def initialize(name)
        self.name = name
        @@all << self
    end

    def self.all
        @@all
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
        self.songs.collect do |genres|
            genres.genre
        end
    end

end