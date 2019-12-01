class Artist
  attr_accessor :name
  
  @@artists=[]
  
  def initialize(name)
    @name = name
  end
  
  def add_song(song)
    song.artist=self
  end
  
  def add_song_by_name(name, genre)
    song=Song.new(name, genre)
    add_song(song)
  end
  
    def self.find_or_create_by_name(name)
      @@artists.find{|person| person.name == name}
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end

end