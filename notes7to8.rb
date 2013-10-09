puts "DOWNCASE".downcase + " " + "upcase".upcase + " " + "cApItAlIzE".capitalize

puts
puts "bug lady" < "xander"
# true, b comes before x therefore b < x
puts "bug lady" < "Xander"
# false, ruby judges these alphabetically but capital letters come before lowercase letters
puts "Uppercase" < "lowercase"
# true, uppercase < lowercase

puts
puts "Hello, what\'s your name?"
name = gets.chomp.downcase
puts "Hello " + name.capitalize + "."
if name == "chris"
  puts "What a lovely name!"
end

puts
puts "Hello, what\'s your name?"
name = gets.chomp.downcase
puts "Hello " + name.capitalize + "."
puts "What a lovely name!" if name == "chris"

puts
mfavorites = []
mfavorites.push "taco"
mfavorites.push "enchilada"
mfavorites.push "burrito"
mfavorites.push "nachos"
mfavorites.pop
puts mfavorites.last

puts
ifavorites = []
ifavorites << "spaghetti"
ifavorites << "lasagna"
puts ifavorites.last