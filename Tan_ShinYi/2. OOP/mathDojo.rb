
class MathDojo
  def initialize
    @sum = 0
    self
  end

  def add *values
    values.each do |val|
      if val.class == Array
        val.each do |i|
          @sum += i
        end
      else
        @sum +=val
      end
    end
    self
  end

  def subtract *values
    values.each do |val|
      if val.class == Array
        val.each do |i|
          @sum -= i
        end
      else
        @sum -=val
      end
    end
    self
  end

  def result
    puts @sum
  end

end

MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result
