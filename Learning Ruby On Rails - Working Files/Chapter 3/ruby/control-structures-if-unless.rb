x = 3

# simple if statement
if x == 2
	puts 'X is 2! (line 5)'
end

# unless
unless x != 2
	puts 'X is 2! (line 10)'
end

# unless - alternate syntax
puts 'X is 2! (line 14)' unless x != 2


# if/else
if x == 2
	puts 'X is 2! (line 19)'
else
	puts 'X is not 2! (line 21)'
end


# if/elsif/else
if x == 2
	puts 'X is 2! (line 27)'
elsif x == 3
	puts 'X is 3! (line 29)'
elsif x == 4
	puts 'X is 4! (line 31)'
else
	puts 'X is not 2,3,4! (line 33)'
end