require 'pry'


class Song
    
    attr_reader :artist, :title
    @@all = []

    def initialize(title)
        @title = title
        @artist
        @@all << self
    end

    def self.all
        @@all
    end

    def name
        self.title
    end

    def artist= (artist)
        @artist = artist
        Artist.all << self
    end

    def artist_name
        @artist.name if @artist
    end


end
