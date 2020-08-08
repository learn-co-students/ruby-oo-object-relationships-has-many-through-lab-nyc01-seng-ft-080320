class Artist

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all.push(self)
    end

    def self.all
        @@all
    end
    
    def artist_insts
        Song.all.select do |s|
            s.artist == self
        end
    end

    def songs
        artist_insts.map do |e|
            e
        end
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def genres
        artist_insts.map do |e|
            e.genre
        end
    end

end