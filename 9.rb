# improved ask method
def ask (question)
	while true
		puts question
		answer = gets.chomp.downcase
		
		return true if answer == "y"
		return false if answer == "n"
		puts "Please answer questions with 'y' for yes or 'n' for no."
	end
end

puts
puts "Introduction..."
puts "Please answer questions with 'y' for yes or 'n' for no."
ask "Do you like tacos?"
ask "Do you like burritos?"
tequila = ask "Do you like tequila?" # Save this return value
ask "Do you like chimichangas?"
puts "Just a few more questions..."
ask "Do you like nachos?"
ask "Do you like flautas?"
puts "Debriefing & thank you..."
puts
puts "tequila = #{tequila}"


# old-school roman numeral method
# I = 1,  V = 5,  X = 10,  L = 50,  C = 100,  D = 500,  M = 1000
def old_school_roman (y)
	roman = ""
	roman << "M" * (y / 1000)
	roman << "D" * (y % 1000 / 500)
	roman << "C" * (y % 500 / 100)
	roman << "L" * (y % 100 / 50)
	roman << "X" * (y % 50 / 10)
	roman << "V" * (y % 10 / 5)
	roman << "I" * (y % 5 / 1)
	roman
end


# modern roman numeral method
# I = 1,  V = 5,  X = 10,  L = 50,  C = 100,  D = 500,  M = 1000
def modern_roman (z)
	first = (z / 1000)
	second = (z % 1000 / 100)
	third = (z % 100 / 10)
	last = (z % 10 )

	roman = ""
	roman << "M" *  first

	if second == 9
		roman << "CM"
	elsif second == 4
		roman << "CD"
	else
		roman << "D" * (z % 1000 / 500)
		roman << "C" * (z % 500 / 100)
	end

	if third == 9
		roman << "XC"
	elsif third == 4
		roman << "XL"
	else
		roman << "L" * (z % 100 / 50)
		roman << "X" * (z % 50 / 10)
	end

	if last == 9
		roman << "IX"
	elsif last == 4
		roman << "IV"
	else
		roman << "V" * (z % 10 / 5)
		roman << "I" * (z % 5 / 1)
	end
end


# use both roman numeral methods
puts
print "Please enter a year between 1 & 3000: "
year = gets.to_i

counter = 0
while ( year < 1 || year > 3000 )
	counter += 1
	if counter < 3
		print "The year must be between 1 & 3000. Please try again: "
		year = gets.to_i
	else	
		time = Time.new
		year = time.year
		puts "Let's use the current year, #{year}, as an example."
	end
end

print "#{year} in old-school Roman numerals is: "
puts old_school_roman (year)

print "#{year} in modern Roman numerals is: "
puts modern_roman (year)