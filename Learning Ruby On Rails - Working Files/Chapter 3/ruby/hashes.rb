# hashes are unordered collections, where we set the indices

person = {:fname => 'Brian', :lname => 'Hoke', :age => 44}
puts person
puts person[:fname]
person[:lname] = "Smith"
puts person

puts
puts '****'
puts

# alternate syntax
person2 = {fname:'Jane', lname:'Doe', age: 72}
puts person2