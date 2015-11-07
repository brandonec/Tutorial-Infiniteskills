class Person
	attr_accessor :fname
	attr_accessor :lname
	attr_accessor :age

	def initialize params
		@fname = params[:fname]
		@lname = params[:lname]
		@age = params[:age]
	end

	def to_s
		"#{@fname} #{@lname}, age #{@age}"
	end
end

p = Person.new({:fname=>'Brian', :lname=>'Hoke', :age=>44})
puts p

# better version:
# use .has_key? to test if hash param has correct key
# also use ternary operator: true-or-false ? if-true : if-false

class Person
	attr_accessor :fname
	attr_accessor :lname
	attr_accessor :age

	def initialize params
		@fname = params.has_key?(:fname) ? params[:fname] : 'Fname'
		@lname = params.has_key?(:lname) ? params[:lname] : 'Lname'
		@age = params.has_key?(:age) ? params[:age] : 0
	end

	def to_s
		"#{@fname} #{@lname}, age #{@age}"
	end
end

p = Person.new({})
puts p