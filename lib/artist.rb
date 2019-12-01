class Artist
  attr_accessor :name
  
  @@artists=[]
  
  def initialize(name)
    @name = name
  end
  
  def add_song(song)
    self.song << song
  end
  
  def add_song_by_name(name, genre)
    song=Song.new(name, genre)
    add_song(song)
    @@artists << self.name
  end
  
  def self.find_or_create_by_name(name)
    if @@artists.find{|person| person.name == name}
      return name
    else
        add_song(song)
    end
  end
  
  def all 
    @@artists
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end

end