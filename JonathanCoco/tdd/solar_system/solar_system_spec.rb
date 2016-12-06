require_relative 'solar_system'
load 'planet.rb'

RSpec.describe SolarSystem do

    it 'has a getter and setter for name attribute' do
      solar_system = SolarSystem.new

      solar_system.name = "Milky Way"

      expect(solar_system.name).to eq("Milky Way")
    end

    it 'default name  is Andromeda' do
      solar_system = SolarSystem.new
      expect(solar_system.name).to eq("Andromeda")
    end

    it 'has a count of planets' do

      solar_system = SolarSystem.new

      planet1 = Planet.new("earth")
      planet2 = Planet.new("mars")

      solar_system.AddPlanet(planet1)
      solar_system.AddPlanet(planet2)

      expect(solar_system.NumPlanets).to eq(2)
    end

    it 'list of planets only includes classes of Planet. ' do

        solar_system = SolarSystem.new

        planet1 = Planet.new("earth")
        planet2 = Planet.new("mars")

        solar_system.planets.each {|planet| expect(planet.class.ancestors.include?(Planet)).to eq(true) }

    end

    it 'has a supernova method that destroys all planets' do

      solar_system = SolarSystem.new

      planet1 = Planet.new("earth")
      planet2 = Planet.new("mars")

      solar_system.AddPlanet(planet1)
      solar_system.AddPlanet(planet2)

      solar_system.SuperNova()



      expect(solar_system.NumPlanets).to eq(0)
    end

end
