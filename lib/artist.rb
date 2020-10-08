
class Artist
    
    attr_reader :name 

    @@artists = []

    def initialize(name)
        @name = name
        @@artists << self  
    end

    def songs
        Song.all.select {|track| track.artist == self}
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def self.all
        @@artists
    end

    def genres
        songs.map {|song| song.genre }
    end
end