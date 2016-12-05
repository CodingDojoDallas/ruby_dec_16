class Human
  attr_accessor :strength, :intelligence, :stealth, :health
  def initialize
    @strength = 3
    @intelligence = 3
    @stealth = 3
    @health = 100
  end
  def attack(obj)
    if obj.class.ancestors.include?(Human)
     puts "AH, ATTACKING...."
     obj.health -=10
   end
  end
end
bob = Human.new
larry = Human.new
bob.attack(larry)
puts larry.health
