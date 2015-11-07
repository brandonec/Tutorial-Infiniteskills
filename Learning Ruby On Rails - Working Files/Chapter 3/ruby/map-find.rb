names = ['alice', 'Bob', 'carl', 'dMitri']

# collect is same as map

# return names (capitalized)
puts names.map {|n| n.capitalize}

puts

# change names (capitalized)
puts names.map! {|n| n.capitalize}

puts

# find
puts "first name with less than 4 chars is #{names.find{|n| n.size < 4}}"

puts

# find_all
puts "all names with more than 3 chars are #{names.find_all{|n| n.size > 3}}"