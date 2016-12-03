require_relative 'human'
class wizard < Human
  def initialize
    @health = 50
    @intelligence = 25
  end
  def heal
    @health += 10
  end
  def fireball(obj)
    obj.health -= 20
  end
end
