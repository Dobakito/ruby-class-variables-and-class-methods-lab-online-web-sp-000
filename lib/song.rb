class Song 
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@genres << @genre
    @@artists << @artist
  end 
  
  def self.count
   @@count
  end 
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def genre_count
    genre_array = {}
    @@genres.group_by{|value| value}.map{|key, value| [key, value.size] }
  end
end   