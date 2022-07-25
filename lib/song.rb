class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count 
        @@count
    end

    def self.artists
        @@artists.uniq
      end
    

    def self.artist_count
        artist_count = {}
        @@artists.each do |artist|
            if artist_count[artist]
                artist_count[artist] += 1
            else
                artist_count[artist] = 1
            end
        end
        artist_count
    end

    # Genes
    def self.genres
        @@genres.uniq
    end

    def self.genres_count
        genres_count = {}
        @@genres.each do |genre|
            if genres_count[genre]
                genres_count[genre] += 1
            else
                genres_count[genre] = 1
            end
        end

        genres_count
    end
end

puts ninety_nine_problems = Song.new("99 Problems","Jay_z","rap")
puts ninety_nine_problems.artist
