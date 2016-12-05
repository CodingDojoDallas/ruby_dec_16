require_relative "project"

RSpec.describe Project do
	it "has a getter and setter for name attribute" do
		project = Project.new("Project Name", "I am a project")
		project.name = "Changed Name"
		expect(project.name).to eq("Changed Name")
	end
	
	it "has a getter and setter for description attribute" do
		project = Project.new("Project Name", "I am a project")
		project.description = "New Description"
		expect(project.description).to eq("New Description")
	end
		
	it "has a method elevator_pitch to display name and description attributes" do
		project1 = Project.new("Project 1", "description 1")
		project2 = Project.new("Project 2", "description 2")
		
		expect(project1.elevator_pitch).to eq("Project 1, description 1")
		expect(project2.elevator_pitch).to eq("Project 2, description 2")
	end
	
	it "has a method add_to_team to add a new name to the project's team attribute" do
		project = Project.new("Project Name", "Project description")
		expect(project.team.length).to eq(0)
		
		project.add_to_team("UserName")
		expect(project.team.length).to eq(1)
		expect(project.team.first).to eq("UserName")
	end
end