require_relative 'solar_system'
RSpec.describe Planet do
  it 'has a name, description, and population' do
    planet = Planet.new('Earth', 'Home', '7 billion')
    expect(planet.name).to eq('Earth')
    expect(planet.description).to eq('Home')
    expect(planet.population).to eq('7 billion')
  end
end

RSpec.describe SolarSystem do
  before do
    @solarsys = SolarSystem.new
  end
  it 'has a name which is defaulted to Andromeda' do
    expect(@solarsys.name).to eq('Andromeda')

    solarsys2 = SolarSystem.new("Home")
    expect(solarsys2.name).to eq("Home")
  end

  it 'has a list of all planets in it' do
    expect(@solarsys.planets).to eq([])
  end

  it 'has a count of all planets in it' do
    expect(@solarsys.planet_count).to eq(0)
    @solarsys.planet_count+=1
    expect(@solarsys.planet_count).to eq(1)
  end

  it 'only contains planets from the Planet class' do
    A = Planet.new('A', 'A', 'A')
    B = Planet.new('B', 'B', 'B')
    C = "planet"
    @solarsys.add_planet(A)
    @solarsys.add_planet(B)
    expect(@solarsys.planets.any?{|i| i.class != Planet}).to eq(false)
    expect(@solarsys.add_planet(C)).to eq("Cannot add this 'planet' as it is not of the class planet.")
  end

  it 'has method called super_nova that destroys all planets in it' do
    @solarsys.add_planet(A)
    @solarsys.add_planet(B)
    expect(@solarsys.planets.length).to eq(2)
    expect(@solarsys.planet_count).to eq(2)

    @solarsys.super_nova
    expect(@solarsys.planets.length).to eq(0)
    expect(@solarsys.planet_count).to eq(0)
  end
end
