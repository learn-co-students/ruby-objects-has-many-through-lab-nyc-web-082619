class Genre
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def songs
        Song.all.select{|song| song.genre == self}
    end

    def artists
        Song.all.collect{|song| song.artist if song.genre == self}.compact
    end

    def self.all
        @@all
    end

end