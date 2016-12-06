names = ["john", "jane", "jimmy", "sue", "rob", "ashley", "bob"]
numbers = [1,2,3,4,5,6,7,8,9,10]

# at or fetch
puts "name at index 3 in #{names}:\n -> #{names.at(3)}"
puts "name at index -1 in #{names}:\n -> #{names.at(-1)}"
puts "name at index 7 in #{names}:\n -> #{names.at(70)} <- (nil if blank)"

# delete
sample_arr = [10,20,30,40,50]
puts "\nsample_arr before delete -> #{sample_arr}"
puts "removing value 30 -> #{sample_arr.delete(30)}"
puts "sample_arr after delete -> #{sample_arr}"
puts "removing value 100 -> #{sample_arr.delete(100)} <- (nil if blank)"

# reverse
puts "\nnames before reverse -> #{names}"
puts "names after reverse -> #{names.reverse}"

# length
puts "\nnames -> #{names} length is #{names.length}"
puts "names -> #{[]} length is #{[].length}"

# sort
puts "\nnames unsorted #{names}"
puts "names after sorting #{names.sort}"

# slice
puts "\nnames #{names}"
puts "slice of names [1, 2] -> #{names[1, 2]}"

# shuffle
puts "\nnames unshuffled -> #{names}"
puts "names shuffled -> #{names.shuffle}"
puts "names shuffled -> again #{names.shuffle}"
puts "names shuffled -> once more #{names.shuffle}"

# join
puts "\nnames.join -> #{names.join}"
puts "names.join(\"-\") -> #{names.join("-")}"

# insert
str = "hola!"
puts "\nnames before insert -> #{names}"
puts "names after inserting \"#{str}\" -> #{names.insert(0, str)}"

# values_at
puts "\nnames -> #{names}"
puts "values_at(1,3,5,10) -> #{names.values_at(1,3,5,10)}"