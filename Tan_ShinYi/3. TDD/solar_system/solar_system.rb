class Planet
  attr_accessor :name, :description, :population

  private
  def initialize name, description, population
    @name = name
    @description = description
    @population = population
  end
end

class SolarSystem
  attr_accessor :name, :planets, :planet_count
  def initialize name="Andromeda"
    @name = name
    @planet_count = 0
    @planets = []
  end

  def add_planet planet
    if planet.class != Planet
      p "Cannot add this 'planet' as it is not of the class planet."
    else
      @planets.push(planet)
      @planet_count += 1
    end
  end

  def super_nova
    @planets = []
    @planet_count =0
  end
end
