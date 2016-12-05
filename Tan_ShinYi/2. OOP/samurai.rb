require_relative 'human'

class Samurai < Human
  @@count = 0

  def initialize
    super
    @health=200
    @@count+=1
  end

  def death_blow victim
    victim.health = 0
    if victim.class== Samurai
      @@count -=1
    end
    puts "Samurai used Death Blow! and #{victim} is now dead. Victim's Health: #{victim.health}"
  end

  def meditate
    @health = 200
    puts "Samurai meditated and is now fully healed. Health: #{@health}."
  end

  def self.how_many # this self.<method name> makes it a class method, thus you don't need an instance to access this.
    puts "There are #{@@count} samurai(s)."
  end
end
