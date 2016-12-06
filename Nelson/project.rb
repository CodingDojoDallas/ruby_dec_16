class Project
  attr_accessor :name, :desc
  def initialize(name, desc)
    @name = name
    @desc = desc
    puts "New project #{@name} was created. This project #{@desc} "
  end
  def epitch
    puts "How much money do you think you deserve...? Let me tell you how to actually earn it."
  end
end

bookface = Project.new("BookFace", "is exactly like Facebook but its nothing like it.")
puts bookface.name
bookface.epitch
