require 'pry'

class Artist
    
    attr_reader :name
    
    @@all = []
    
    def self.all
        @@all
    end

    def self.new_song(name,genre)
        new_song = Song.new(name, genre)
        new_song.artist = self
    end
    
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def songs 
        Song.all.select {|song| song.artist == self }
    end
    
    def genres
        self.songs.map {|song| song.genre}
    end

    def new_song(name, genre)
        newest_song = Song.new(name, self, genre)
    end

    
end
