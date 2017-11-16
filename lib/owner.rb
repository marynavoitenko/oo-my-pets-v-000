class Owner
  attr_reader :name
  @@all = []

  def initialize(species)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.size
  end

  def species
    @species
  end

end
