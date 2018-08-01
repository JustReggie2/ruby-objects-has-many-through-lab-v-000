class Artist
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def self.all
    @@all
  end

  def new_song(song_name, genre)
    @songs << Song.new(song_name, self, genre)
    #song.artist = self
  end

end
