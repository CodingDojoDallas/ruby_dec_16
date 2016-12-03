require_relative 'project'
RSpec.describe Project do  
  # ...
  # building off our previous example lets add a test to make sure our method returns the correct value
  it 'has a method elevator_pitch to explain name and description' do

    project1 = Project.new('Project 1', 'description 1')
    #if we call elevator_pitch method we should expect to get that project name and description back
    expect(project1.elevator_pitch).to eq("project name is #{project1.project_name} and project description is #{project1.project_description}")
  end
    it 'has a method add_to_team' do
      project1 = Project.new('Project 1', 'description 1')
      expect(project1.add_to_team(String)).to include(String)
    end
end