#1
x = [3,5,1,2,7,9,8,13,25,32]
puts x.inject(:+)
puts x.find_all {|x| x>10}

#2
y = ["John", "KB", "Oliver", "Cory", "Matthew"]
y.shuffle.each {|x| puts x}
y.each {|x| puts x if x.length>5}

#3
letters = Array("a".."z")
shuffle = letters.shuffle
puts shuffle.last
puts shuffle.first
puts shuffle.first + " is a vowel" if ["a", "e", "i", "o", "u"].include?shuffle.first

#4&5
random = Array.new
10.times {random.push(rand(55..100))}
print random
puts
print random.sort
puts
puts random.max
puts random.min

#6
5.times {print rand(65..90).chr}

#7
string = Array.new
10.times {string.push((1..5).map {rand(65..90).chr}.join)}
puts
print string
