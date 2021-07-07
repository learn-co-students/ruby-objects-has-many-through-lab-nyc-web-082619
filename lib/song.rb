class Song

    attr_accessor :artist, :title, :genre

    @@all = []

    def initialize(title, artist, genre)
        @artist = artist
        @title = title
        @genre = genre
        @@all << self
    end

    def self.all
        @@all
    end

end