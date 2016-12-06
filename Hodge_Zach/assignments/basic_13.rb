x = (1..255)

(1..255).each {|x| puts x}

puts (1..255).select(&:odd?)

sum = 0
(1..255).each {|x| puts "New number #{x}, Sum: #{sum+=x}"}

x = [1,2,3,4,5]

puts x

x.each {|i| puts i}

puts x.max

y = [2, 10, 3]

puts y.reduce(:+) / y.size

puts odd = (1..255).select(&:odd?)

array = [1, 2, 3, 4, 5]
y = 3
counter = 0
array.each {|array| counter+=1 if array > 3}
puts counter

x = [1, 2, 0, -2]
x.each {|x| puts x*x}

x = [1, 5, 10, -2]
x.each {|x| if x > 0 then puts x else puts 0 end}

x = [1, 5, 10, -2]
max = x[0]
min = x[0]
x.each {|x| max=x if x > max}
x.each {|x| min=x if x < min}
puts "Max: #{max}"
puts "Min: #{min}"
puts "Avg: #{x.reduce(:+) / x.size.to_f}"

x = [1, 2, 3, 4, 5]
counter = 0
x.each {x[counter] = x[counter+=1]}
x[x.size-1] = 0
puts x

x = [-1, 2, -3, 4]
x.each {|x| if x>0 then puts x else puts 'Dojo' end}
