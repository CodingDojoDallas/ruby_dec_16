class MathDojo
  attr_accessor :value
  def initialize
    @value = 0
  end
  def add(n, n1=0)
    @value += (n + n1)
    self
  end
  def sub(n, n1=0)
    @value -= (n + n1)
    self
  end
end

runit = MathDojo.new
puts runit.add(2).add(2,3).sub(3,1).value



class MathDojo2
  attr_accessor :value
  def initialize
    @value = 0
  end
  def add(*n)
    if n.class == Array
      @value += n.flatten.reduce(:+)
    else
      @value += n
    end
    self
  end
  def sub(*n)
    if n.class == Array
      @value -= n.flatten.reduce(:+)
    else
      @value -= n
    end
    self
  end
end

runit2 = MathDojo2.new
puts runit2.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).sub([2,3], [1.1, 2.3]).value
