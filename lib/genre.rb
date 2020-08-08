class Genre

    attr_accessor :name

    @@all = Array.new

    def initialize(name)
        @name = name
        @@all.push(self)
    end

    def self.all
        @@all
    end

    def genre_insts
        Song.all.select do |track|
            track.genre == self
        end
    end

    def songs
        genre_insts.map do |e|
            e
        end
    end

    def artists
        genre_insts.map do |e|
            e.artist
        end
    end

end