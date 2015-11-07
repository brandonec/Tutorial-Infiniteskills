def methid
	i = 1
	j = 2
	yield(i, j)
end

puts '******'

methid do |x, y|
	puts x, y
end

puts '******'

methid do |x, y|
	puts "The result is #{x + y*y}"
end

puts '******'