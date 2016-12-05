x = [3,5,1,2,7,9,8,13,25,32]
x.reduce(:+)
x.select{ |i| i > 10}

x = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
x.shuffle
for i in x
  puts i
  end
x.select { |i| puts i if i.length > 5}

x = Array("a".."z")
x.shuffle!
x.last
x.first

x = Array.new
10.times{ x.push (rand(55..100))}
puts x
x.sort
x.max
x.min

puts x = (1..5).map{ rand(65..90).chr }.join

x = Array.new
10.times { x.push((1..5).map{ rand(65..90).chr }.join) }
puts x 
