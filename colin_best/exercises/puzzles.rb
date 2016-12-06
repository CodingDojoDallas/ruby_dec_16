#1
x = [3,5,1,2,7,9,8,13,25,32]
puts "Sum:#{x.reduce(:+)} "
x.each {|x| puts x unless x<10 }
puts ("**************************************************")
#problem 2
y = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
puts y.shuffle.join(", ")
y.each {|y| if y.length>5 then puts y end}

#array = [a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z]
puts ("**************************************************")
#problem 3
letters = Array("a".."z")
shuffled = letters.shuffle
puts shuffled.last
puts shuffled.first
puts ["a", "e", "i", "o", "u"].include?(shuffled.first) ? shuffled.first+" is a vowel" : shuffled.first+"is not a vowel"

puts ("**************************************************")
# problem 4
random = Array.new
10.times {random.push(rand(55..100))}
puts random
puts ("**************************************************")
#problem 5
puts random.sort
puts random.max
puts random.min
puts ("**************************************************")
#problem 6
5.times { puts rand(65..90).chr}
puts ("**************************************************")
#problem 7
string = Array.new
10.times { string.push((1..5).map { rand(65.90).chr}.join) }
puts string
puts ("**************************************************")
