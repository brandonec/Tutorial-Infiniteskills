puts 123.class
puts 10000000000000000000000.class
puts 7.4.class

puts "11.0 / 3.0 = #{11.0/3.0}"
puts "11.0 / 3 = #{11.0/3}"
puts "11 / 3.0 = #{11/3.0}"
puts "11 / 3 = #{11/3}"

puts "11 % 3 = #{11%3}"

# http://ruby-doc.org/core-1.9.3/Fixnum.html

puts "11 is odd: #{11.odd?}"
puts "11 is even: #{11.even?}"

puts "absolute value of -12: #{-12.abs}"


# http://ruby-doc.org/core-1.9.3/Float.html

puts "round 11.56725: #{11.56725.round}"
puts "round 11.56725 to three decimal places: #{11.56725.round(3)}"
puts "0.75 = #{0.75.numerator}/#{0.75.denominator}"