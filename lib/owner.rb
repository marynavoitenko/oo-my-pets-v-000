class Owner
  attr_reader :name
  attr_accessor :name, :pets
  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
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


  def buy_fish(fish)
    pets[:fishes] << fish.name
  end

end
