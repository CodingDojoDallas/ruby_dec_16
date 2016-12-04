arr = [12, 'm', "name", 30, 50,1,4,"Coding"]

puts arr.at(1)
puts arr.fetch(-2)
puts 
arr.delete('m')
puts arr
puts 
puts (arr.reverse)
puts
puts (arr.length)
puts
arr2 = [1,56,23,57,97,-12]
puts(arr2.sort)
puts

puts (arr.slice(4..6))
puts
puts(arr.shuffle)
puts
puts arr.join("<==>")
arr.insert(-1,arr2)
puts arr
puts
puts (arr.values_at(0,3,2, -2))