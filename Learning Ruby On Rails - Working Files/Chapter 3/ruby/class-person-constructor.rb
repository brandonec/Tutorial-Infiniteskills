class Person
	attr_accessor :fname
	attr_accessor :lname
	attr_accessor :age

	def initialize(f, l, a)
		@fname = f
		@lname = l
		@age = a
	end

	def to_s
		"#{@fname} #{@lname}, age #{@age}"
	end

	def over_the_hill?
		return false if @age < 40
		true
	end
end


p = Person.new("Brian", "Hoke", 44)
puts p

puts "#{p.fname} is over the hill: #{p.over_the_hill?}"