# 1. test if a string is a palindrome
class String
	def palindrome?
		return self == self.reverse
	end
end

str1 = "able was I ere I saw elba"
str2 = "I ain't no palindrome"
# should print "str1 is a palindrome: true"
puts "str1 is a palindrome: #{str1.palindrome?}"
# should print "str2 is a palindrome: false"
puts "str2 is a palindrome: #{str2.palindrome?}"


# 2. count number of vowels in a string
class String
	def num_vowels
		return self.downcase.count "aeiou"
	end
end

str1 = "Joe Appleby"
# should print "str1 has 4 vowels"
puts "'#{str1}' has #{str1.num_vowels} vowel(s)"


# 3. method to reduce fractions
#    hint: use http://www.ruby-doc.org/core-2.0.0/Integer.html#method-i-gcd

def reduceit(num,den)
	gcd = num.gcd(den)
	return "#{num}/#{den} = #{num/gcd}/#{den/gcd}"
end

puts reduceit(4,24)
puts reduceit(5,10)
puts reduceit(12,3)
puts reduceit(5,7)