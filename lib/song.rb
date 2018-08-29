require 'pry'

class Song
  # intialize class variables
  @@count = 0
  @@artists = []
  @@genres = []

  attr_reader :name, :artist, :genre

  def initialize(name, artist, genre)
    # initializes instance variables
    @name = name
    @artist = artist
    @genre = genre
    # increments coun class variable
    @@count += 1
    # adds genre and artist to class variables
    @@artists << artist
    @@genres << genre
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

  def self.genre_count
    genre_count = {}
    uniq_genres = @@genres.uniq
    uniq_genres.each do |genre|
      genre_count[genre] = @@genres.count(genre)
    end
    genre_count
  end

  def self.artist_count
    artist_count = {}
    uniq_artists = @@artists.uniq
    uniq_artists.each do |artist|
      artist_count[artist] = @@artists.count(artist)
    end
    artist_count
  end

end
