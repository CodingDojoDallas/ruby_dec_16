require_relative 'project'

RSpec.describe Project do

	it 'has a getter and setter for name attribute' do

		project = Project.new("Project Name", "I am a project")
		project.name = "Changed Name"
		project.description = "Changed Description"
		project.elevator_pitch

		expect(project.name).to eq("Changed Name")
		expect(project.description).to eq("Changed Description")
	end
	it 'has a method elevator_pitch to explain name and description' do
		project1 = Project.new('Project 1', 'description 1')
		project2 = Project.new('Project 2', 'description 2')

		expect(project1.elevator_pitch).to eq("The project name is Project 1 and the description is description 1")
		expect(project2.elevator_pitch).to eq("The project name is Project 2 and the description is description 2")
	end
	it 'has a method add_to_team which adds a new team_member' do

		project = Project.new("project name yo", "description description yo")
		expect{project.add_to_team}.to output("I'm a new team member!").to_stdout
	end
end