puts '*********'

# do/end syntax - each element of array passed in for 'name':
names = ["Jane", "Carl", "Dmitri", "Brian"]
names.each do |name|
	puts "There's a person named #{name}."
end

puts '*********'


# open/close braces syntax:
names = ["Jane", "Carl", "Dmitri", "Brian"]
names.each {
	|name| puts "There's a person named #{name}."
}

puts '*********'


def iterator1
	puts "I am iterator1"
	puts "Just before yield"
	yield
	puts "Just after yield"
end

iterator1 do
	puts "I am the code block"
	puts "iterator1 yielded to me"
end

puts '*********'


def iterator2
	puts "I am iterator2"
	puts "Just before yield"
	i = 4
	yield(i)
	puts "Just after yield"
end

iterator2 do |x|
	puts "I am the code block - #{x}"
	puts "iterator2 yielded to me"
end

puts '*********'

# scope of block param (since Ruby v.1.9.1) is local:

x = 10
5.times do |x|
	puts "x inside the block: #{x}"
end  
puts "x outside the block: #{x}"

