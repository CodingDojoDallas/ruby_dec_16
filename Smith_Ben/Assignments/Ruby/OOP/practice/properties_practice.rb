


class User
	def first_name(val)
		@first_name = val
	end
end

user1 = User.new
user2 = User.new
user1 == user2 #=> false

user1.first_name = "Ben"


class User
  attr_reader :last_name  # getter method
  attr_writer :last_name  # setter method
end

class User
  attr_accessor :first_name, :last_name  # initialize variables, its both setter and getter
end



class User
  attr_accessor :first_name, :last_name  #initializer
  def initialize(f_name, l_name) #initializer function
    @first_name = f_name  # set variable
    @last_name = l_name
  end
end
steph = User.new("Stephen", "Curry") #create new User

