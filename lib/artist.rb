class Artist

    @@all = []
    attr_accessor :name, :song, :genre;

    def initialize(n)
        @name = n;
        @@all.push(self);
    end

    def self.all
        @@all
    end
    
    def songs
        Song.all.filter{|song| song.artist == self}
    end

    def new_song(name, genre)
        song = Song.new(name, self, genre);
    end

    def genres
        self.songs.map{|song| song.genre}
    end

end