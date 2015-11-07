# 1. find least and greatest values without iterating:
#    check out http://ruby-doc.org/core-1.9.3/Array.html
a1 = [2, 17, 9, -7, 20, 14, -3]
puts a1
puts "Least is [least]; greatest is [greatest]"

puts


# an array of hashes, for use in exercise 2:
prod1 = {:title=>"Shirt, Men's", :size=>'XL', :cost=>21}
prod2 = {:title=>"Skirt, Women's", :size=>'S', :cost=>16}
prod3 = {:title=>"T-Shirt", :size=>'M', :cost=>14}
myproducts = [prod1, prod2, prod3]
puts myproducts

puts

# 2. write method items_with_cost_greater_than,
#    which returns a hash of products:
def items_with_cost_greater_than(products, min_cost)
	# your code here
end
min_cost = 17
puts "Items costing greater than #{min_cost} are:"
puts items_with_cost_greater_than(myproducts, 17)

puts

# 3. set each of the elements of array nums to be twice
#    its current value plus 5:

nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
puts "your code here"