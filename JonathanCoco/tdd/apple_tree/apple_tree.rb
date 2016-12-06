
class AppleTree

    attr_accessor :height, :age, :apple_count

    def initialize
        @height = 3
        @age = 0
        @apple_count  = 0

    end

    def year_gone_by
        @age = @age + 1
        @height = @height + 1
    end

    def grow
        if (@age > 3 && @age <= 10)
            @apple_count = @apple_count + 300
        end
    end

    def pick_apples
        @apple_count = 0
    end

end
