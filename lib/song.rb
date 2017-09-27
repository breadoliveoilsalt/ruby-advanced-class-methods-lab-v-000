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

  def self.create(name)
    s = self.new(name)
    if !self.all.include?(song)
      self.all << s
    end
    s
  end

end
