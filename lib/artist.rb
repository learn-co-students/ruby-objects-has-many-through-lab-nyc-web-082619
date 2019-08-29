class Artist
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end
    
    def new_song(title, genre)
        Song.new(title, self, genre)
    end

    def songs
        Song.all.select{|song| song.artist == self}
    end

    def genres
        Song.all.collect{|song| song.genre if song.artist == self}.compact
    end

    def self.all
        @@all
    end
end

