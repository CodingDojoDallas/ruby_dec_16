# print 1-255
# (1..255).each { |i| puts i }

# print odds 1-255
# (1..255).each { |i| puts i if i % 2 != 0}

# print sum
#sum = 0
#(1..255).each { |i| puts "New number: #{i}, Sum: #{sum += i}" }
# following won't work for some reason
# (1..255).inject(0) { |sum, i| puts "New number: #{i}, Sum: #{sum + i}" }

# iterate through array
#[1,3,5,7,9,11,13].each { |i| puts "#{i}" }

# find max
#myArr = [-3,-5,-7].sort
#puts myArr[-1]
#
#myArr = [10,8,6,4,2,0].sort
#puts myArr[-1]

# get average
#myArr = [2,10,3]
#puts "Avg of #{myArr} is #{myArr.inject(0) { |sum, i| sum + i } / myArr.count}"

# create odd numbered array
#puts "y values -> #{(1..255).to_a.delete_if { |i| i % 2 == 0 }}"

# greater than y
#y = 3
#myArr = [1,3,5,7].delete_if { |i| i <= y }
#puts "Number of values in #{[1,3,5,7]} greater than #{y} -> #{myArr.count}"

# square the values
#puts "Squared values in #{[1,5,10,-2]} -> #{[1,5,10,-2].map {|i| i * i}}"

# replace negatives
#puts "Replaced negatives in #{[1,5,10,-2]} -> #{[1,5,10,-2].map { |i| i < 0 ? 0 : i }}"

# max, min, and average
#myArr = [1,5,10,-2].sort
#puts "Min #{myArr[0]}, Max #{myArr[-1]}, Avg #{myArr.inject(0) { |sum, i| sum + i }}"

# shift values
#myArr = [1,5,10,7,-2]
#myArr.shift
#puts "Shifted array -> #{myArr.push(0)}"

# replace negatives
puts "Replaced negatives in #{[1,5,10,-2]} -> #{[1,5,10,-2].map { |i| i < 0 ? "Dojo" : i }}"