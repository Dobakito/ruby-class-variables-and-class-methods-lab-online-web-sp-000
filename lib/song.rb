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
  
  def self.artist
    @@artists.condense
  end
  
  def self.genre
    @@genres
  end
  
end   