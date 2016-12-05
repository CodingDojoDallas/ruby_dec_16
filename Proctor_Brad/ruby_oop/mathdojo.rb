class MathDojo
    def initialize
        @total = 0
        self
    end

    def add *num
        num.each do |x|
            if x.is_a? Array
                x.each do |y|
                    @total += y
                end
            else
                @total += x
            end
        end
        self
    end

    def subtract *num
        num.each do |x|
            if x.is_a? Array
                x.each do |y|
                    @total -= y
                end
            else
                @total -= x
            end
        end
        self
    end

    def result
        puts @total
        self
    end
end

math1 = MathDojo.new
math1.add(2).add(2,5).subtract(3,2).result
math2 = MathDojo.new
math2.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result
