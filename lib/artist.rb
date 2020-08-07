class Artist
    @@all = []
    attr_accessor :name

    def initialize (name)
        self.name = name
        
        @@all << self
    end

    def songs
        Song.all.filter do |song|
            song.artist == self
        end
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def genres
        self.songs.map do |song|
            song.genre
        end
    end

    def self.all
        @@all
    end
end