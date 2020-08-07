class Genre
    @@all = []

    attr_accessor :name

    def initialize (name)
        self.name = name

        @@all << self
    end

    def songs
        Song.all.filter do |song|
            song.genre == self
        end
    end

    def artists
        self.songs.map do |song|
            song.artist
        end
    end

    def self.all
        @@all
    end
end