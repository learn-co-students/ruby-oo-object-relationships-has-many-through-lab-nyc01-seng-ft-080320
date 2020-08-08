class Song

    attr_reader :name, :artist, :genre
    
    @@all = Array.new

    def initialize(name, artist, genre)
        @name = name
        @genre = genre
        @artist = artist
        @@all.push(self)
    end

    def self.all
        @@all
    end  

end