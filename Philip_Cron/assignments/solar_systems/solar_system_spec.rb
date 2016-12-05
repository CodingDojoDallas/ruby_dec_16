require_relative 'solar_system'
RSpec.describe Planet do
    before do
        @mars= Planet.new
    end
    it 'has a getter and setter for name, description, population attributes' do
        @mars.name = "name"
        @mars.description = "I am a description"
        @mars.population = 1000000
        expect(@mars.name).to eq("name")
        expect(@mars.description).to eq("I am a description")
        expect(@mars.population).to eq(1000000)
    end
end

require_relative 'solar_system'
RSpec.describe Solar_System do
    before do
        @s_s= Solar_System.new
    end
    it 'has a getter and setter for name attribute' do
        expect(@s_s.name).to eq('Andromeda')
    end
    it 'contains a list of all planets in it.' do
        expect(@s_s.planets).to eq([])
    end
    it 'has a count of how many planets are in the Solar System.' do
        expect(@s_s.count_planets).to eq("There are a total of 0 planets")
    end
    it 'Solar System should only be from the Planet class' do
        mars= Planet.new
        mars.name = "mars"
        expect(@s_s.add_planets(mars)).to eq(["mars"])
    end
    it 'Solar System should have a method called Super Nova that destroys all of the planets in it' do
        expect(@s_s.super_nova).to eq([])
    end
end