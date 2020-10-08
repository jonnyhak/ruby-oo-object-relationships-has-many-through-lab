class Genre

    attr_reader :name 

    @@genres = []

    def initialize(name)
        @name = name
        @@genres << self
    end

    def self.all
        @genres 
    end

    def songs
        Song.all.select {|track| track.genre == self}
    end

    def self.all
        @@genres 
    end

    def artists
        songs.map {|track| track.artist }
    end



end