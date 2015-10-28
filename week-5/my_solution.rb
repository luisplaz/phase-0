# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? A Positive Integer
# What is the output? (i.e. What should the code return?) A string
# What are the steps needed to solve the problem?

=begin

1. Create method that will convert the integer into a string.
2. Check to see if string has more than 3 characters.
3. If so reverse string add a comma and iterate through every character.
4. Add a comma after every 3 characters (use counter), Just add the character if couter hasnt reached 3 or a multiple of 3, print
string if less than or equal to 3 characters.
5. Print variable as string reversed to screen.

=end

# 1. Initial Solution

def separate_comma(integer)

	integer_string = integer.to_s

	count = 1

	new_integer = String.new

	if integer_string.length <= 3 

		return integer_string

	else

		integer_string.reverse.split("").each do |s|

			if count == integer_string.length

				new_integer += s

			elsif count%3 == 0 

				new_integer << "#{s},"

			else

				new_integer += s

			end

			count += 1
		end

		return new_integer.reverse

	end

end

# 2. Refactored Solution

def separate_comma_refactored(integer)

return integer.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse

end

# 3. Reflection

=begin

What was your process for breaking the problem down? What different approaches did you consider?

I broke the problem down into parts. First manipulating the integer so I could check every digit and then going through every digit and 
finding the right spot to introduce the comma. I considered building an array and adding a "," after each slot
divisible by 3.

Was your pseudocode effective in helping you build a successful initial solution?

Yes very, helped me to jump straight into coding with little to no re analyzing.

What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?

I used gsub, which was very dificult to implement and significantly changed my code but not really in the way it works.

How did you initially iterate through the data structure?

Yes I did.

Do you feel your refactored solution is more readable than your initial solution? Why?

Not really but because im not familiar with the method.

=end