class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def self.all
    @@all
  end

  def new_song(song, genre)
    @songs << Song.new(song, self, genre)
    song.artist = self
  end

end
