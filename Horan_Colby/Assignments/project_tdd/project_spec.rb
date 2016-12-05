require_relative 'project'

RSpec.describe Project do
  @name = "Project Name"
  @description = "I am a project"
	it 'has a getter and setter for name attribute' do
		project = Project.new("#{@name}", "#{@description}")
		project.name = "Changed Name"
		expect(project.name).to eq("Changed Name")
	end

  it 'has a getter and setter for description attribute' do
    project = Project.new("#{@name}", "#{@description}")
    project.name = "Changed Name"
    expect(project.name).to eq("Changed Name")
  end

  it 'has to have an intializer with variables for name and description' do
    project = Project.new("#{@name}", "#{@description}")
    expect(project.name).to eq("#{@name}")
    expect(project.description).to eq("#{@description}")
  end

  it 'has a method elevator_pitch to display name and description' do
    one = Project.new("#{@name}, #{@description}")
    two = Project.new("#{@name}, #{@description}")
    expect(one.elevator_pitch).to eq("#{@elevator_pitch}")
    expect(two.elevator_pitch).to eq("#{@elevator_pitch}")
  end

  ## I literally have no idea with ^^^ failed. 

  it "has a method add_to_team that adds a new team member" do
    heizenberg = Project.new("Heizenberg", "Distribution of Goods")
    expect(heizenberg.add_to_team).to eq(1)
  end
end


