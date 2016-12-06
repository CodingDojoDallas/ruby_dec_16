module MyEnumerable
  def my_each
    for i in 0..self.length-1
      yield self[i]
    end
  end
end

class Array
  include MyEnumerable
end
arr = [1,2,3,4]
arr.my_each {|i| puts i = i*9 }
arr.inspect
