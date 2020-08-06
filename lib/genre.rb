class Genre
    
    attr_accessor :name, :song;
    @@all = [];

    def initialize(n)
        @name = n;
        @@all << self;
    end

    def self.all
        @@all;
    end

    def songs
        Song.all.filter{|song| song.genre == self};
    end

    def artists
        self.songs.map{|song| song.artist};
    end
end