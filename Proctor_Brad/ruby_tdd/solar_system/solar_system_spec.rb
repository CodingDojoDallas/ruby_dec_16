<<<<<<< HEAD
require_relative 'solar_system'

RSpec.describe Planet do
    before do
        @planet = Planet.new
    end

    describe 'Planet Stuff' do
        it 'has method add_planet that sets new instance with a name, description, and population' do
            @planet.add_planet "Pluto", "round", 0
            expect(@planet.name).to eq("Pluto")
            expect(@planet.description).to eq("round")
            expect(@planet.population).to eq(0)
        end
    end
end

RSpec.describe SolarSystem do
    before do
        @system = SolarSystem.new
    end

    describe 'Solar System Initialization' do
        it "has getter and setter for name with default value of Andromeda" do
            expect(@system.name).to eq("Andromeda")
        end
    end

    describe 'Solar System Stuff' do
        it "Solar System class should contain a list of all the planets in it" do
            expect(@system.planets).to eq([])
        end

        it "has method count that should count all planets" do
            expect(@system.count).to eq(0)
        end

        it "has method super_nova that should clear all planets" do
            @system.super_nova
			expect(@system.planets.empty?).to eq(true)
        end
    end
end
=======
require_relative 'solar_system'

RSpec.describe Planet do
    before do
        @planet = Planet.new
    end

    describe 'Planet Stuff' do
        it 'has method add_planet that sets new instance with a name, description, and population' do
            @planet.add_planet "Pluto", "round", 0
            expect(@planet.name).to eq("Pluto")
            expect(@planet.description).to eq("round")
            expect(@planet.population).to eq(0)
        end
    end
end

RSpec.describe SolarSystem do
    before do
        @system = SolarSystem.new
    end

    describe 'Solar System Initialization' do
        it "has getter and setter for name with default value of Andromeda" do
            expect(@system.name).to eq("Andromeda")
        end
    end

    describe 'Solar System Stuff' do
        it "Solar System class should contain a list of all the planets in it" do
            expect(@system.planets).to eq([])
        end

        it "has method count that should count all planets" do
            expect(@system.count).to eq(0)
        end

        it "has method super_nova that should clear all planets" do
            @system.super_nova
			expect(@system.planets.empty?).to eq(true)
        end
    end
end
>>>>>>> upstream/master
