class Artist
  attr_accessor :name
  
  @@artists=[]
  
  def initialize(name)
    @name = name
    @@artists << @name
  end
  
  def self.all 
    @@artists
  end
 
end