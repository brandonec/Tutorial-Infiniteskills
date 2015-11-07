class Quadrilateral
	def num_sides
		4
	end
end

class Square < Quadrilateral
	def sides_parallel
		true
	end

	def sides_equal_length
		true
	end
end

class Trapezoid < Quadrilateral
	def sides_parallel
		false
	end

	def sides_equal_length
		false
	end
end

puts ''
puts '*******'
puts ''

quad = Quadrilateral.new

puts "I am a quadrilateral"
print "I have this many sides: "
puts quad.num_sides

puts '*******'

sq = Square.new

puts "I am a square"
print "I have this many sides: "
puts sq.num_sides
print "All of my opposite sides are parallel: "
puts sq.sides_parallel
print "All of my opposite sides are equal in length: "
puts sq.sides_equal_length

puts '*******'

trap = Trapezoid.new

puts "I am a trapezoid"
print "I have this many sides: "
puts trap.num_sides
print "All of my opposite sides are parallel: "
puts trap.sides_parallel
print "All of my opposite sides are equal in length: "
puts trap.sides_equal_length

puts ''
puts '*******'
puts ''