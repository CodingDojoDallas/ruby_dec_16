name = {"first_name" => "Michael", "last_name" => "Choi"}
dummy_hash = {}

# .delete(key) => deletes and returns a value associated with the key
name.delete("first_name")
puts name

# .empty? => returns true if hash contains no key-value pairs
puts name.empty?
puts dummy_hash.empty?

# .has_key?(key) => true or false
puts name.has_key?("first_name")
puts name.has_key?("last_name")

# .has_value?(value) => true or false
puts name.has_value?("Michael")
puts name.has_value?("Choi")