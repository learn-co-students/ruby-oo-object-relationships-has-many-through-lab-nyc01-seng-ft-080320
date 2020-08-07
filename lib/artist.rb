class Artist
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_song(name, genre)
        new_song = Song.new(name, genre) 
        new_song.artist = self

    end

    def songs
        Song.all.filter do |song|
            song.artist == self
        end
    end

    def genres
        songs.map do |song|
            song.genre
        end
    end

    def self.all
        @@all
    end
end