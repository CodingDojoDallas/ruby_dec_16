# x = [3,5,1,2,7,9,8,13,25,32]
# puts x.reduce :+
# puts x.reject { |i| i < 11 }
# ------------------------------------------------------------------
# x = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
# puts x.shuffle!
# puts x.reject { |i| i.length < 6}
# ------------------------------------------------------------------
# x = ('a'..'z').to_a.shuffle
# vowels = "aeiou"
# puts x.last
# puts x.first
# if vowels.include? x.first then puts "First letter is a vowel!" end
# ------------------------------------------------------------------
# arr = []
# i = 0
# while i < 10 do
#     x = 55 + rand(45)
#     arr.push(x)
#     i += 1
# end
# puts arr.to_s
# ------------------------------------------------------------------
# arr = []
# i = 0
# while i < 10 do
#     arr.push(55 + rand(45))
#     i += 1
# end
# puts arr.sort!.to_s,arr.min,arr.max
# ------------------------------------------------------------------
# puts (0...5).map { (65 + rand(26)).chr }.join
# ------------------------------------------------------------------
# 10.times{ puts (0...5).map { (65 + rand(26)).chr }.join }
