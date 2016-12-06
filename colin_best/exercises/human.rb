class Human
  attr_accessor :strength, :intelligence, :stealth, :health
  def initialize
    puts "Hey, I'm alive! Yippee!"
    @strength = 3
    @intelligence = 3
    @stealth = 3
    @health = 100
  end

  def attack
    if obj.class.ancestors.include?(Human)
      obj.health -= 10
      true
    else
      false
    end
  end

  def show_health
    puts "Your health is: #{@health}"
  end
end

class Wizard < Human
  def initialize
    super
    puts "It's wizard time, baby"
    @health = 50
    @intelligence = 25

  end

  def heal
    @health += 10
  end

  def fireball(obj)
    attack(obj)
    obj.health -= 20
  end
end

class Ninja < Human
  def initialize
    puts "Ninja in the house!"
    @stealth = 175
    super
  end

  def steal(obj)
    attack(obj)
    @health += 10
    puts "I am so stealthy"
    return self
  end

  def get_away
    @health += 15
    puts "HAHA, I'll escape this one!"
    return self
  end
end

class Samurai < Human
  @samurai_counter = 0

  class << self
    attr_accessor :samurai_counter
  end

  def initialize
    @health = 200
    self.class.samurai_counter += 1
    super
  end

  def death_blow(obj)
    attack(obj)
    obj.health = 0
  end

  def meditate
    @health = 200
  end

  def how_many
    puts "There are #{self.class.samurai_counter} samurais"
  end
end

#
#Shamen = Samurai.new
#Gandalf = Wizard.new
#Jackie = Ninja.new

#puts Jackie.get_away
#puts Shamen.meditate
