require 'pry'
class Owner

  attr_reader :species
  attr_accessor :name, :pets


  extend Persistable::ClassMethods
  include Persistable::InstanceMethods

  ALL = []

  def initialize(species)
    # self.class.all << self
    super
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(fish_name)
    fish = Fish.new(fish_name)
    self.pets[:fishes] << fish
  end

  def buy_cat(cat_name)
    cat = Cat.new(cat_name)
    self.pets[:cats] << cat
  end

  def buy_dog(dog_name)
    dog = Dog.new(dog_name)
    self.pets[:dogs] << dog
  end

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    self.pets.map do |type, pets_array|
      pets_array.map do |pet|
        pet.mood = "nervous"
      end
      pets_array.clear
    end
  end

  def list_pets
    n_cats = self.pets[:cats].length
    n_dogs = self.pets[:dogs].length
    n_fish = self.pets[:fishes].length

    "I have #{n_fish} fish, #{n_dogs} dog(s), and #{n_cats} cat(s)."
  end

  # def self.all
  #   @@all
  # end
  #
  # def self.reset_all
  #   self.all.clear
  # end
  #
  # def self.count
  #   self.all.length
  # end
end
