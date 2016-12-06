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
      obj.health -= 10
      true
    else
      false
    end
  end
  def attributes
    puts @strength 
    puts @intelligence 
    puts @stealth 
    puts @health
  end
    
end

# human1 = Human.new
# human2 = Human.new

# human1.attack(human2)
# human2.attributes