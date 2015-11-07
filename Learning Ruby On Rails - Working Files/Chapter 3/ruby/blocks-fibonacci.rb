# Fibonacci sequence is 1, 1, 2, 3, 5, 8, ...
# first two elements are 1; each successive element
# is sum of previous two elements

# note parallel assignment

def fib_to(max)
	i1,i2 = 1,1
	while i1 <= max
		yield i1
		i1, i2=i2, i1+i2
	end
end

fib_to(100) do |f|
	puts f
end