require_relative 'solar_system'


RSpec.describe Solar_System do 
	before do
		@unknown = Solar_System.new()
		@Theseus = Solar_System.new("Theseus")
		@Feros = Planet.new(@Theseus, "Feros", "ExoGeni Corporation Run", 5000)
	end
	it 'has a name given when initialized' do
		expect(@Theseus.name).to eq("Theseus")
	end
	it 'has a default name when not given' do
		expect(@unknown.name).to eq("Andromeda")
	end
	it 'has an attribute of planets which lists out planets within that solar system' do
		expect(@Theseus.planets).to match_array(["Feros"])
	end
	it 'has a method planet_count which displays number of planets in system' do
		expect(@Theseus.planet_count).to eq(1)
	end
	it 'has new planets added only from planet class' do
		expect(@Feros.class.ancestors.include?(Planet)).to eq(true)
	end
	it 'has a method called super_nova that destroys all planets within it' do
		expect(@Theseus.super_nova).to eq(0)
	end
end

RSpec.describe Planet do 
	before do
		@Theseus = Solar_System.new("Theseus")
		@Feros = Planet.new(@Theseus, "Feros", "ExoGeni Corporation Run", 5000)
	end
	it 'has a name, description and population' do
		expect(@Feros).to have_attributes(:planet_name => "Feros")
		expect(@Feros).to have_attributes(:description => "ExoGeni Corporation Run")
		expect(@Feros).to have_attributes(:population => 5000)
	end
end