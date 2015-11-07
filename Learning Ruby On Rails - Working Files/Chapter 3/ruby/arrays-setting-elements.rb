arr = [10,20,30,40,50]

arr[0] = -10 #sets first element to -10
puts arr

puts
puts '*****'
puts

arr[-2] = -40 #changes 40 to -40
puts arr

puts
puts '*****'
puts

arr[1,2] = -20,-30 #changes 20,30 to -20,-30
puts arr

puts
puts '*****'
puts

arr[0..3] = 1,1,1,1 #set first four elements to 1
puts arr