class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create(song)
    song = self.new
    if !self.all.include?(song)
      self.all << song
    end

  end

end
