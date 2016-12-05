class Project
  attr_accessor :name, :description
  def initialize name, description
    @name = name
    @description = description
    @team_members = []
  end
  def elevator_pitch
    "#{@name}, #{@description}"
  end
  def add_team_member name
    @team_members.push(name)
    "New team member #{name} has been added."
  end
end
