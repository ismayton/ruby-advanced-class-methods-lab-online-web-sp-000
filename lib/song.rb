require 'pry'

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

  def self.create
    song = self.new(song)
    @@all << song
    song
  end
  
  def self.new_by_name(name)
    name = self.new(name)
    @@all << name
  end

  def self.create_by_name(name)
    song = self.new(name)
    @@all << song 
  end
  
  def self.find_by_name(name) 
    @@all.each do |song|
      if song.name == name 
        return song 
      end
    end
    false
  end 
  
  def self.find_or_create_by_name(name) 
    if self.find_by_name(name)
      return name 
    else
      self.create_by_name(name)
    end
  end 
  
  def self.alphabetical 
    @@all.sort 
  end 
  
  def self.new_from_filename(filename) 
  end 
  
  def self.create_from_filename(filename)
  end 
  
  def self.destroy_all 
    @@all.clear
  end 
  
end
