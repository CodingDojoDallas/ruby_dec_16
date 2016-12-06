module MyEnumberable
    def my_each
        for i in self
            yield i
        end
    end
end
class Array
    include MyEnumberable
end
[1,2,3,4].my_each { |i| puts i+7 }
