load 'planet.rb'
load 'solar_system.rb'

solar_system = SolarSystem.new

earth = Planet.new('earth', '', 100000)
mars =  Planet.new('mars', '', 0)
jupiter  = Planet.new('jupiter', '', 0)

solar_system.AddPlanet(earth)
solar_system.AddPlanet(mars)
solar_system.AddPlanet(jupiter)

puts solar_system.name
puts solar_system.NumPlanets()

solar_system.SuperNova()
puts solar_system.NumPlanets()
