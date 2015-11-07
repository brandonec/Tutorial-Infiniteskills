class Person
	attr_accessor :fname
	attr_accessor :lname
	attr_accessor :age

	def to_s
		"#{@fname} #{@lname}, age #{@age}"
	end
end


p = Person.new
p.fname = "Brian"
p.lname = "Hoke"
p.age = 44
puts p

#change first name
p.fname = "Pat"
#change age
p.age = 43
puts p