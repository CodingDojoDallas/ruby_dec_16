require_relative 'human'

class Samurai
  def initialize
    @health = 200
    self.class.s_count += 1
  end
  def death_blow(obj)
    attack(obj)
    obj.health = 0
  end
  def mediate
    @health = 200
  end
  def how_many
    puts "#{self.class.s_count}"
  end
end
