class Apple_Tree
    attr_accessor :height, :age, :apples
    def initialize
        @height = 0
        @age = 0
        @apples = 0
    end

    def count
        @apples
    end

    def year_gone_by
        @age += 1
        if @age > 10 then
            @height -= 1
        else
            @height += 3
        end
        if @age > 2 && @age < 10 then
            @apples += 25
        end
        "#{@age} #{@height}"
    end

    def pick_apples
        @apples = 0
    end
end

# tree = Apple_Tree.new
# puts tree.year_gone_by
