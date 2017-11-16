class Owner
  attr_reader :name
  attr_accessor :name
  @@all = []

  def initialize(species)
    @species = species
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

  def say_species
    return "I am a #{self.species}."
  end

  def name(name)
    @name = name
  end

end
