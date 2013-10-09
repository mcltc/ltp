puts "-------------------"
puts "CHAPTER 2 EXERCISES"
puts "-------------------"

puts
puts "There are #{24*365} hours per year."
puts
puts "There are #{ 60*24* (365*10 + 2) } minutes in a decade with 2 leap years."
puts "There are #{ 60*24* (365*10 + 3) } minutes in a decade with 3 leap years."
puts
puts "A 20 year old is approximately #{ (60*60*24*365.25*20).to_i } seconds old." 
puts 
puts "The author is approximately #{ 1025000000 / (60*60*24*365.25).to_i } years old."

puts
puts "-------------------"
puts "CHAPTER 5 EXERCISES"
puts "-------------------"

puts
print "Please enter your first name: "
first = gets.chomp.capitalize

print "Please enter your middle name: "
middle = gets.chomp.capitalize

print "Please enter your last name: "
last = gets.chomp.capitalize

print "Please enter your favorite number: "
favorite = gets.to_i

puts
puts "Hello #{first} #{middle} #{last}."
puts "Your favorite number is #{favorite} but #{favorite + 1} is more than #{favorite}."

puts
puts "-------------------"
puts "CHAPTER 6 EXERCISES"
puts "-------------------"

puts
puts "Conversation with your angry boss:"
puts "WHADDAYA WANT MINION?"
response = gets.chomp
puts "WHADDAYA MEAN YOU WANT '" + response.upcase + "'?!?! YOU'RE FIRED!!!"

# table of contents 1
c1 = 50
l1 = 30
r1 = 20

title = "Table of Contents 1".center(c1)
space = "-------------------".center(c1)
chap_1 = "Chapter 1: Getting Started".ljust(l1) + "page 1".rjust(r1)
chap_2 = "Chapter 2: Numbers".ljust(l1) + "page 9".rjust(r1)
chap_3 = "Chapter 3: Letters".ljust(l1) + "page 13".rjust(r1)

puts
puts title
puts space
puts chap_1
puts chap_2
puts chap_3

# table of contents 2
c2 = 40
l2 = 22
r2 = 18

puts
puts( "Table of Contents 2".center(c2) )
puts( "-------------------".center(c2) )
puts( "Chapter 1: Starting".ljust(l2) + "page 1".rjust(r2) )
puts( "Chapter 2: Numbers".ljust(l2) + "page 9".rjust(r2) )
puts( "Chapter 3: Letters".ljust(l2) + "page 13".rjust(r2) )