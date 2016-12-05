#1
for i in 1..255
  puts i
  end

#2
(1..255).reject{ |i| i % 2 == 0}

#3
sum = 0
(1..255).each { |n| puts "New number: #{n} Sum: #{sum+=n}" }

#4
for i in 1..255
  puts "#{i}"
end

#5
x = (1..255)
puts x.max

#6
x = [2, 10, 3]
puts x.reduce(:+) / x.length

#7
for i in 1..255
  puts "#{i}"
end

#8
x = [1,3,5,7]
y = 3
x.select{ |i| i > y}

#9
for i in Array
  puts "#{i*i}"
end

#10
x = [1, 5, 10, -2]
x.each { |x|
  if x>0
  then puts x
  else puts 0
  end }

#11
puts x.max
puts x.min
puts x.reduce(:+) / x.length

#12
x = [1, 5, 10, 7, -2]
y = 0
x.each { x[y] = x[y+=1] }
x[x.size-1] = 0
puts x

#13
x = [-1, -3, 2]
x.each { |x| if x>0
then puts x
else puts 'Dojo'
end }
