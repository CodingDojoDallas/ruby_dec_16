require_relative 'wizard'
RSpec.describe Wizard do
  before do
    @bob = Wizard.new
    @amy = Wizard.new
  end
  it 'has a default health of 50 and intelligence of 25' do
    expect(@bob.health).to eq(50)
    expect(@bob.intelligence).to eq(25)
  end

  it 'has a heal method that increases health by 10' do
    expect(@bob.health).to eq(50)
    @bob.heal
    expect(@bob.health).to eq(60)
  end

  it 'has an ancestor chain that includes human' do
    expect(@bob.class.ancestors).to include(Human)
  end

  it 'has a fireball method that attacks an object and reduces the objects health' do
    expect(@bob.fireball @amy).to eq("Wizard threw a fireball!")
    expect(@amy.health).to eq(30)
  end
end
