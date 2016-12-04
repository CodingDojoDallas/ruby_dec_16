#we are going to have to include our Project class in our spec file
require_relative 'project'
#now we can start Rspec
#this line enacts the Rspec library and calls the describe method that takes in the class Project, when doing so it expects to do something
RSpec.describe Project do
  #now we can have Rspec test our Project class
  before do
  #lets create a new project
    name="Project Name"
    description="I am a project"
    @project = Project.new(name, description)
    @projectTest1 = Project.new('Project 1', 'description 1')
    @projectTest2 = Project.new('Project 2', 'description 2')
  end
  # now we can test our Project class
  it 'has a getter and setter for name attribute' do
    # lets make sure we can set the name attribute
    @project.name = "Changed Name"
    # we should be able to run that code, now lets make sure its changed.
    # we run the expect method on our projects name and expect our project name to now equal the value of Changed Name, this returns true or false
    expect(@project.name).to eq("Changed Name")
  end 
  it 'has a getter and setter for descrip attribute' do
    @project.descrip = "Changed descrip"
    expect(@project.descrip).to eq("Changed descrip")
  end
  it 'has a method elevator_pitch to return name and description' do
    #if we call elevator_pitch method we should expect to get that project name and description back
    expect(@projectTest1.elevator_pitch).to eq("Project 1, description 1")
    expect(@projectTest2.elevator_pitch).to eq("Project 2, description 2")
  end
  it 'has a getter and setter for team_member attribute' do
    t_member= "Changed Team Member"
    @project.team_member= t_member
    expect(@project.team_member).to eq(t_member)
  end 
  it 'has a method add_to_team to add new team_member' do
    t_member1= "Member Test 1"
    t_member2= "Member Test 2"
    test1 = @projectTest1.add_to_team(t_member1)
    test2 = @projectTest2.add_to_team(t_member2)
    expect(test1).to eq(t_member1)
    expect(test2).to eq(t_member2)
  end
end