class Owner

attr_accessor :name, :pets

  @@all = []

  def initialize(name)

    @@all << self

    @pets = {

        :fishes => [],
        :dogs => [],
        :cats => []

    }

  end

  def self.all

    @@all

  end

  def self.reset_all

    @@all.clear

  end

  def self.count

    @@all.size

  end

  def species

    return "human"

  end

  def say_species

    return "I am a human."

  end

  def buy_fish(fish_name)

    fish = Fish.new(fish_name)
    @pets[:fishes] << fish

  end

  def buy_dog(dog_name)

    dog = Dog.new(dog_name)
    @pets[:dogs] << dog

  end

  def buy_cat(cat_name)

    cat = Cat.new(cat_name)
    @pets[:cats] << cat

  end

  def walk_dogs

    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end

  end

  def play_with_cats

    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end

  end

  def feed_fish

    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end

  end

  def sell_pets

    @pets.each do |species, array|

      array.each do |pet|

        pet.mood = "nervous"

      end

      @pets[species].clear

    end

  end

  def list_pets

    return "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."

  end

end
