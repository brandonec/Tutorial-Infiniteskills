arr = [10, 15, 20, 25, 30, 35, 40]

# iterate over array:
arr.each do |val|
	puts val
end

puts

# iterate over array - alternate syntax:
arr.each {|val| puts val}

puts

# operative statement can be more complex:
arr.each do |val|
	if val % 10 == 0
		puts "#{val} is divisible by 10"
	end
end

puts

# iterate over hash
hsh = {:fname=>'Brian', :lname=>'Hoke', :age=>44}

hsh.each do |key, val|
	puts "#{key.upcase} is #{val}"
end