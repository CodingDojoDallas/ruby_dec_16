class Project
  attr_accessor :name, :description, :team_member
  def initialize name, description
    @name = name
    @description = description
    @team_member = ""
  end
  def elevator_pitch
    "#{@name}, #{@description}"
  end

  def add_to_team(team_member)
      @team_member = team_member
  end
end
