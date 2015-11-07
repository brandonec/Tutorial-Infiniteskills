# 1. Write method repeatit, which performs/executes the block passed to it twice
def repeatit
	yield
	yield
end

repeatit do
	puts 'I am repeating'
end

x = 1
repeatit do
	x = x + 1
end
puts x

puts '*********'

# 2. Array method "find" already exists: it returns the first occurence of an
#    element satisfying its condition. Write the method "myfind", as if the
#    built-in method didn't already exists

class Array
	def myfind
		self.each do |i|
			return i if yield(i)
		end
		return nil
	end
end

puts [9, 10, 11, 12, 13, 14, 15, 16].myfind{|x| x > 10} #should print 11

puts [9, 10, 11, 12, 13, 14, 15, 16].myfind{|x| x % 6 == 0} #should print 12