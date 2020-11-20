require 'pry'

class Artist

    attr_reader :name
    attr_accessor :songs
    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end

    def self.all
        @@all
    end

    def add_song(song)
        Song.all << song
        song.artist = self
    end

    def songs
        Song.all.select {|song| song.artist == self} 
    end


    def add_song_by_name (song_name)
        song_name = Song.new(song_name)
        add_song(song_name)
    end

    def self.song_count
        Song.all.uniq.count
    end


end