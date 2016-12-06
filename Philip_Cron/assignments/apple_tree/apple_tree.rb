class Apple_Tree
    attr_accessor :height, :age, :num_of_apples
    def initialize
        @height = 150
        @age = 9
        @num_of_apples = 0
    end
    def apple_count
        if @age <= 3
            @num_of_apples = 0
        elsif @age >= 10
            @num_of_apples = 0    
        else
            @num_of_apples += 1
        end
    end
    def year_gone_by
        @age += 1
        @height += 1
    end
    def pick_apples
        @num_of_apples = 0
    end
end