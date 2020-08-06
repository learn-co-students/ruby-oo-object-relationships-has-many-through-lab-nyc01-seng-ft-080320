class Song
 
    attr_reader :name, :genre, :artist
    

    @@all = []

    def self.all
        @@all
    end

    def initialize(name, artist = nil,genre)
        @name = name
        @genre = genre
        @artist = artist
        @@all << self
    end

end