require 'pry' 

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new 
    song.save 
    song
  end
  
  def self.new_by_name(title)
    song = self.new
    song.name = title
    song
  end
  
  def self.create_by_name(title)
    song = self.new 
    song.name = title
    song.save
    song
  end
  
  def self.find_by_name(title)
    song = all.detect{|x| x.name == title}
    song
  end
  
  def self.find_or_create_by_name(title)
    if find_by_name(title) == nil 
      create_by_name(title)
    else 
      find_by_name(title)
    end
  end
  
  def self.alphabetical 
    all.sort_by{|x| x.name}
  end 
  
<<<<<<< HEAD
# rows = csv_data.split("\n")
# people = rows.collect do |row|
#   data = row.split(", ")
#   name = data[0]
#   age = data[1]
#   company = data[2]
#   person = Person.new
#   person.name = name
#   person.age = age
#   person.company = company
#   person
=======
rows = csv_data.split("\n")
people = rows.collect do |row|
  data = row.split(", ")
  name = data[0]
  age = data[1]
  company = data[2]
  person = Person.new
  person.name = name
  person.age = age
  person.company = company
  person
>>>>>>> 99c603ae703b011d4bd7205f1410868b6bd7739e
  
  
  def self.new_from_filename(filename)
    song = self.new
<<<<<<< HEAD
    data = filename.split(/\ - |\.mp3/)
    name = data[1]
    artist_name = data[0]
    song.name = name 
    song.artist_name = artist_name
    song
    # binding.pry
  end
  
  def self.create_from_filename(filename)
    self.new_from_filename(filename).save
  end 
  
  def self.destroy_all 
    all.clear 
  end
  
=======
    # filename.split(/\ - |\.mp3/)
    binding.pry
  end 
  
>>>>>>> 99c603ae703b011d4bd7205f1410868b6bd7739e
end
