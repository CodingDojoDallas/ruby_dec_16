myRange = (1..10)

# member?
puts "5 member of #{myRange}?"
puts myRange.member?(5)

puts "50 member of #{myRange}?"
puts myRange.member?(50)

# include?
puts "\n5 include of #{myRange}?"
puts myRange.include?(5)

puts "50 include of #{myRange}?"
puts myRange.include?(50)

# last
puts "\nlast value in range #{myRange}"
puts myRange.last

# max
puts "\nmax value in range #{myRange}"
puts myRange.max

# min
puts "\nmin value in range #{myRange}"
puts myRange.min