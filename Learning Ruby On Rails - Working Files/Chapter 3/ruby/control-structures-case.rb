x = 1

# case statement
case x
	when 5 then puts 'X is five'
	when 4 then puts 'X is four'
	when 3 then puts 'X is three'
	when 2 then puts 'X is two'
	when 1 then puts 'X is one'
	else puts 'X is not five, four, three, two, nor one'
end

# case statement
case x
	when 3 then puts 'X is three'
	when String then puts 'X is a string!'
	when 0..2 then puts 'X is 0, 1, or 2'
	else puts 'X is something else'
end