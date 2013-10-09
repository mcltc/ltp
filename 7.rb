# bottles of beer on the wall
x = 5

3.times do
	puts x.to_s + " bottles of beer on the wall"
	puts x.to_s + " bottles of beer"
	puts "Take one down pass it around"
	x -= 1
	puts x.to_s + " bottles of beer on the wall"
	puts
end

puts "2 bottles of beer on the wall"
puts "2 bottles of beer"
puts "Take one down pass it around"
puts "1 bottle of beer on the wall"
puts
puts "1 bottle of beer on the wall"
puts "1 bottle of beer"
puts "Take one down pass it around"
puts "No bottles of beer on the wall"

puts
puts "-------------------------------------------"

# deaf grandma extended
puts
puts "Say something to Grandma."

bye_count = 0
while true
	response = gets.chomp
	response == "BYE" ? bye_count += 1 : bye_count = 0
	
	if bye_count >= 3
		puts "Grandma says: OKAY, BYE BYE"
		break
	end
	
	if response != response.upcase
		puts "Grandma says: HUH?! SPEAK UP, SONNY!"
	else
		random_year = 1930 + rand(20)
		puts "Grandma says: NO, NOT SINCE #{random_year}!"
	end
end

puts
puts "-------------------------------------------"

# method to get year range for leap year analysis
def get_year_range
	puts
	print "Please input a starting year: "
	starting_year = gets.to_i
	print "Please input an ending year: "
	ending_year = gets.to_i
	
	counter = 0
	while ending_year <= ( starting_year + 3 )
		counter += 1
		if counter < 3
			puts
			puts "The ending year must be at least 4 greater than the starting year. "
			print "Please input a starting year: "
			starting_year = gets.to_i
			print "Please input an ending year: "
			ending_year = gets.to_i
		else
			puts
			puts "Let's use 1990 and 2013 as an example. "
			starting_year = 1990
			ending_year = 2013
		end
	end
	
	year_range = [starting_year, ending_year]
	year_range # returns year_range
end

# leap years using while loop
years = []
years = get_year_range
x = years[0]

puts "The leap years in that range are:"

while x <= years[1]
	if x % 4 == 0
		if ( x % 100 != 0 ) || ( x % 400 == 0 )
			print "#{x} "
		end
	end

	x += 1
end

puts; puts
puts "-------------------------------------------"

# leap years using .each method and print
# not as efficient as the code above because it always processes all requirements but code above stops if x % 4 isn't 0
years = []
years = get_year_range
all_years = ( years[0]..years[1] )

puts "The leap years in that range are:"
all_years.each do |x|
	print "#{x} " if (x % 4 == 0) && (x % 100 != 0)
	print "#{x} " if x % 400 == 0
end