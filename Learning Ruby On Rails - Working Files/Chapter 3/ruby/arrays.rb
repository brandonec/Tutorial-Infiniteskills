# arrays are ordered collections of objects, indexed from 0

arr1 = [10, 20, 30]
puts arr1

puts
puts "*****"
puts

arr2 = ["Brian", "Jane", "Teddy"]
puts arr2

puts
puts "*****"
puts

arr3 = Array.new
arr3[0] = "Brian"
arr3[1] = "Jane"
arr3[2] = "Teddy"
puts arr3

puts "Second element of arr3 is #{arr3[1]}"