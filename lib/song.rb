class Song
    attr_accessor :name, :artist, :genre
    @@all = [];

    def initialize(name, artistObj, genreObj)
        @name = name;
        @artist = artistObj;
        @genre = genreObj;

        @@all.push(self);
    end

    def self.all
        @@all;
    end
end