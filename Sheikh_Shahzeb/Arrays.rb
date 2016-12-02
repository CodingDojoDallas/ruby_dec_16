# Ruby Arrays Assignment #1

a = ["Ruby","PHP","C++","Python","Java"]
# b = 123
# printing an array
 puts a

# .at method on an array
 puts a.at(0)

# .fetch method on an array
 puts a.fetch(4)

# .delete method on an array
 puts a.delete("Ruby")

# .reverse to reverse an array
 puts a.reverse

# .length method on an array
 puts a.length

# .sort method on an array to reorder alphabetically
 puts a.sort

# .slice method on an array that returns the selected indexes
 puts a.slice(0..3)

# .shuffle method on an array
 puts a.shuffle

# .join method on an array which contatinates the array, basically just removes spaces
 puts a.join

# .insert method on an array 
 puts a.insert(0,100)

# .values_at method on an array
puts a.values_at(0,3,1)


