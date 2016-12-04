


# .any? {|obj| block} -> true or false
a = ["ant", "bear", "car"].any? {|word| word.length >= 3}
puts a

# .each -> calls block once for each element in self, passing that element as a parameter.
b = ["ant", "bear", "car"].each {|word| print word, "--"}
puts b

# .collect {|obj| block} -> array; returns a new array with the results of running block once for every element in enum
c = (1..4).collect {|i| i*i}
puts c


d = (1..1000).detect { |i| i % 5 == 0 and i % 7 ==0}
puts d


e = (1..10).find_all { |i| i % 3 == 0}
puts e


f = (1..10).reject { |i| i % 3 == 0}
puts f


g = 5.upto(10) { |i| print i, " " }