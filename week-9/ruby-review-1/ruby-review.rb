# Numbers to English Words


# I worked on this challenge [by myself, with: Joshua Shin].
# This challenge took me [1] hours.


# Pseudocode

# 1. Make Hash with number as keys and the english name as value.
# 2. Define in_words method that takes in an integer as argument.
# 3. If number is less that 20 then look for it in hash and return the value.
# 	3.1 Else if larger or equal to 20 create 2 variable, one will have the tenths place and another will have the units.
# 		The tenth place variable will store the first character of the number and add a 0 and return the value of this number in hash.
# 		The units place variable will store the second character of the number and return the value of this number in hash.
# 4. Return a string with tenth place variable and unit place variable.

# Initial Solution

@in_word = {0 => "", 1 => 'one',2 => 'two',3 => 'three',4 => "four",5 => "five",6 => "six",7 => "seven",8 => "eight",9 => "nine",10 => "ten", 11 => "eleven",12 => "twelve",13 => "thirteen",14 => "fourteen",15 => "fifteen",16 => "sixteen",17=> "seventeen",18 => "eighteen",19 => "nineteen",20 => "twenty",30 => "thirty",40 => "forty",50 => "fifty",60 => "sixty",70 => "seventy",80 => "eighty",90 => "ninety"}

def in_words(number)

	if number < 20

		return @in_word[number]

	elsif  number >= 20

		num_1 =  number.to_s[0] + '0'
		num_2 = number.to_s[1]

		@in_word[num_1.to_i] + @in_word[num_2.to_i]

	end

end

p in_words(67)

# Refactored Solution


# Reflection

# What concepts did you review in this challenge?

# We reviewed ruby syntax and variable scope. We also played a little with hashes to review some of the previous material.

# What is still confusing to you about Ruby?

# Nothing really just returning to it after learning javascript.

# What are you going to study to get more prepared for Phase 1?

# Review some of my blog as well as the reading material.