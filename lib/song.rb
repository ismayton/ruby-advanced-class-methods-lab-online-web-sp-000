require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def initialize(name, artist_name)
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
    song.save
    song
  end
  
  def self.new_by_name(name)
    song = self.new(name)
    song
  end

  def self.create_by_name(name)
    song = self.new(name)
    song.save
    song
  end
  
  def self.find_by_name(name) 
    @@all.each do |song|
      if song.name == name 
        return song 
      end
    end
    nil
  end 
  
  def self.find_or_create_by_name(name) 
    if self.find_by_name(name)
      song = self.find_by_name(name) 
    else
      song = self.create_by_name(name)
    end
    song
  end 
  
  def self.alphabetical 
    @@all.sort_by {|song| song.name}
  end 
  
  def self.new_from_filename(filename)
    without_mp3 = csv_data.split(".")
    artist_and_song = row.split(" - ")
    artist_name = artist_and_song[0]
    name = artist_and_song[1]
    song = self.new(name, artist_name)
  end 
  
  def self.create_from_filename(filename)
    
  end 
  
  def self.destroy_all 
    @@all.clear
  end 
  
end
