class Owner
  attr_reader :name
  attr_accessor :name, :pets
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

  def pets
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def buy_fish(fish)
    self.pets = [:fishes] << fish
  end

end
