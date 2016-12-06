require_relative 'human'
class Samurai < Human
  @samurai_count = 0
  class << self
    attr_accessor :samurai_count
  end
  def initialize
    @health = 200
    self.class.samurai_count += 1
  end
  def death_blow(obj)
    obj.health = 0
    self
  end
  def meditate
    @health = 200
    self
  end
  def how_many
    puts "There are this many Samurai: #{self.class.samurai_count}"
    self
  end
end
tim = Samurai.new
tim.how_many
