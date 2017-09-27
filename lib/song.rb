require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []

  # def initialize(name)
  #   @name = name
  # end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create(name)
    s = self.new
    s.name = name
    #if !self.all.include?(song)
      #  binding.pry
    #self.all << s
    s.save
    #end
    s
  end

end
