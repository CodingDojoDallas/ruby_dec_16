x = {name: "Roq", age: 34}

puts x.to_s
puts "Deleting key age"
x.delete(:age)
puts x.to_s
puts "Is the hash empty? " + x.empty?.to_s
puts "Does the hash have key name? " + x.has_key?(:name).to_s
puts "Does the has have the values 'Roq'? " + x.has_value?("Roq").to_s
