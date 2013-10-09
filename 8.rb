# building and sorting an array
puts
puts "Please enter a few words on separate lines."

arr = []
count = 0

while true
	word = gets.chomp.downcase
	if word != ""
		arr.push word
	else
		break
	end
	count += 1
end

puts
puts "Here are your words in alphabetical order:"
arr.sort!
arr.each { |w| puts w }


# table of contents, revisited 1
puts
puts "Table of Contents 1".center(50)
puts "-------------------".center(50)

chapters = [ ["Getting Started", "page 1"], ["Numbers", "page 9"], ["Letters", "page 13"] ]

chap_num = 0
chapters.each do |chap|
	chap_num += 1
	puts "Chapter #{chap_num}: #{chap[0]}".ljust(30) + "#{chap[1]}".rjust(20)
end

# table of contents, revisited 2
toc_array = [ [:title, "Table of Contents 2"], [:chapter, "Chapter 1: Starting", "page 1"], [:chapter, "Chapter 2: Numbers", "page 9"], [:chapter, "Chapter 3: Letters", "page 13"] ]

puts
toc_array.each do |x|
	if x[0]==:title
		puts x[1].center(40)
		puts "-------------------".center(40)
	end
	if x[0]==:chapter
		puts x[1].ljust(22) + x[2].rjust(18)
	end
end