class MathDojo
    attr_accessor :result
    def initialize
        @result = 0
    end
    def add(*val)
        if val.class == Array
            @result += val.flatten.reduce(:+)
        else
            @result += val
        end 
       self
    end
    def subtract(*val)
        if val.class == Array
            @result -= val.flatten.reduce(:+)
        else
            @result -= val
        end
        self
    end
end

puts MathDojo.new.add(2).add(2, 5).subtract(3, 2).result
puts MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2 ,3], [1.1, 2.3]).result