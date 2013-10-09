print "integer math: 5 + 7 = "
puts 5 + 7
# 12

puts
print "float math 1: 5.0 + 7.0 = "
puts 5.0 + 7.0
# 12.0
print "float math 2: 5.00 + 7.00 = "
puts 5.00 + 7.00
# 12.0
print "float math 3: 5.01 + 7.01 = "
puts 5.01 + 7.01
# 12.02

puts
4.times { print "Bueller " }
puts "Bueller!!!"
# separate print and puts so the last "Bueller" includes "!!!"" but is still be on the same line
puts

puts 2 * 5
# 10
puts "2" * 5
# 22222
puts "2 * 5"
# 2 * 5

puts
puts "You\'re good at using apostrophes!"
# must use \ before an apostrophe

puts
x = "5"
puts "There are " + x + " apples in the box."
puts "There are " << x << " apples in the box."
puts "There are #{x} apples in the box."
# outputs for these two will be the same

puts
var1 = 2
var2 = "5"
puts var1.to_s + var2
# 25
puts var1 + var2.to_i
# 7

puts
puts "15".to_f
# 15.0
puts "99.999".to_f
# 99.999
puts "99.999".to_i
# 99, .to_i rounds down

puts
puts "5 is my favorite number!".to_i
# 5
puts "Who asked you about 5?".to_i
# 0
puts "You did.".to_f
# 0.0

puts
puts "gets versus gets.chomp"
puts "chomp needed to take off 'enter' characters at the end of the string"

puts
puts "What\'s your name?"
name = gets
puts "Hello " + name + ", nice to meet you!"

puts
puts "What\'s your name?"
name = gets.chomp
puts "Hello " + name + ", nice to meet you!"

puts
b = "four    four"
puts b.reverse
puts b.length
# 12, includes the spaces


puts
c = [1, 2, 3, 4, 5]

puts
c.each { |d| d *= 3; print d }
# 3691215

puts
c.each { |d| d *= 3; print d.to_s + " " }
# 3 6 9 12 15

puts
c.each { |d| d *= 3; print "#{d} " }
puts
# 3 6 9 12 15
# c.each { |d| d *= 3; print d + " " } will generate an error, "print d + " "" is invalid because d is an integer and " " is a string


puts
line_width1 = 30
puts( "Old Mother Hubbard".center(line_width1) )
puts( "Sat in her cupboard".center(line_width1) )
puts( "Eating her curds and whey".center(line_width1) )
puts ""
line_width2 = 60
puts( "When along came a spider".center(line_width2) )
puts( "Who sat down beside her".center(line_width2) )
puts( "And scared her poor shoe dog away.".center(line_width2) )