class Song

    attr_reader :name, :artist, :genre 

    @@songs = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist 
        @genre = genre
        @@songs << self 
    end

    def songs
        @@songs
    end

    def self.all
        @@songs 
    end


end