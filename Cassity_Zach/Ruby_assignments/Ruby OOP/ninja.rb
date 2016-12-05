require_relative 'human'
class Ninja < Human
  def initialize
    @stealth = 175
  end
  def steal(obj)
    obj.health -= 1
    @health += 10
  end
  def get_away()
    @health -= 15
  end
end
