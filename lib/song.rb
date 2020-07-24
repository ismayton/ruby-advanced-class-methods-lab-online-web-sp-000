class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def initialize(name)
    @name = name 
  end 
  
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def Song.create
    song = self.new()
    song.save
    song
  end
  
  def Song.new_by_name(name)
    song = self.new(name)
  end

  def Song.create_by_name(name)
    song = self.new(name)
    song.save
  end
  
  def Song.find_by_name(name) 
    @@all.each do |song|
      if song.name == name 
        return song 
      end
    end
    false
  end 
  
  def Song.find_or_create_by_name(name) 
    if Song.find_by_name(name)
      return name 
    else
      Song.create_by_name(name)
    end
  end 
  
  def Song.alphabetical 
    @@all.sort 
  end 
  
  def Song.new_from_filename(filename) 
  end 
  
  def Song.create_from_filename(filename)
  end 
  
  def Song.destroy_all 
    @@all.clear
  end 
  
end
