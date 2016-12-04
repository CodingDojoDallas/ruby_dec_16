class MathDojo
  attr_accessor :result
  def initialize
    @result = 0 #holds the value for each 'instance' to add them together
    #without this you only get 2 7 5 over and over :(
  end
  def add(*arg) # Allows any amount of arguments
    if arg.class == Array #checks if argument is an array
      @result += arg.flatten.reduce(:+) # uses reduce/flatten to add all the items in the array together
    else
      @result += arg
    end
    self
  end
  def sub(*arg)
    if arg.class == Array
      @result -= arg.flatten.reduce(:+)
    else
      @result -= arg
    end
    self
  end
end
puts MathDojo.new.add(2).add(2,5).sub(3,2).result
puts MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).sub([2,3], [1.1, 2.3]).result
