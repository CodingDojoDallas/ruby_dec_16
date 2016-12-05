class Human
  attr_accessor :strength, :intelligence, :health, :stealth
  def initialize
    @strength = 3
    @stealth = 3
    @intelligence = 3
    @health = 100
  end

  def attack victim
    if victim.class.ancestors.any?{ |i| i==Human}
      victim.health -=10
    end
  end

  def show
    puts "#{self}'s stats..."
    puts "intelligence: #{@intelligence}"
    puts "strength: #{@strength}"
    puts "health: #{@health}"
    puts "stealth: #{@stealth}"
  end
end
