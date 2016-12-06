require_relative 'exercise'

RSpec.describe Project do
  it 'should have a getter and setter for name attribute' do
    project = Project.new('Name', 'Description')
    project.name = 'Project name'
    expect(project.name).to eq('Project name')
  end

  it 'should have a getter and setter for description attribute' do
    project = Project.new('Name', 'Description')
    project.description = 'Project description'
    expect(project.description).to eq('Project description')
  end

  it 'initializer with arguments for name and description' do
    project = Project.new('Name', 'Description')
    expect(project.name).to eq('Name')
    expect(project.description).to eq('Description')
  end

  it 'has a method elevator_pitch to show the name and description' do
    project1 = Project.new('Project 1', 'Description 1')
    project2 = Project.new('Project 2', 'Description 2')
    expect(project1.elevator_pitch).to eq("Project 1 Description 1")
    expect(project2.elevator_pitch).to eq("Project 2 Description 2")
  end


end
