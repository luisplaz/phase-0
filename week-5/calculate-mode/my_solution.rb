# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: Natalie Polen ]

# I spent [2] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.

# 0. Pseudocode

=begin

# # What is the input?

# Input: Array

# # What is the output? (i.e. What should the code return?)

# Output: The mode - an array

# # What are the steps needed to solve the problem?

# 1. Take in array
    1.1 Make an empty hash
  2. Iterate through each value and insert it into an empty hash
  3. Assign each key its own value, starting at 1
  4. If the key already exists, increase the value by 1
  5. Once iteration is over, print an array of all keys with the highest value

=end

# 1. Initial Solution

def mode(array)

	mode_hash = {}
	mode_array = []
	max = 0
	
	array.each do |element|

		if mode_hash.has_key?(element)

			mode_hash[element] += 1

		else

			mode_hash.store(element, 1)

		end

	end

	mode_hash.each do |key,value|

		if value > max

			max = value

			mode_array.clear

			mode_array.push(key)

		elsif value == max

			mode_array.push(key)
			
		else

		end

	end

	return mode_array

end


# 3. Refactored Solution

def mode(array)

	mode_hash = {}
	mode_array = []
	max = 0
	
	array.each do |element|

		mode_hash.has_key?(element) ? mode_hash[element] += 1 : mode_hash.store(element, 1)

	end

	mode_hash.each do |key,value|

		if value > max

			max = value

			mode_array.clear.push(key)

		elsif value == max

			mode_array.push(key)

		end

	end

	return mode_array

end

# 4. Reflection

=begin

Which data structure did you and your pair decide to implement and why?

We decided to implement a hash because we needed to assign a value equal to the number of times an element was present in an array to each
element (key), this could be succesfully done by using hashes.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

Yes, a lot more due to the fact that last time I was able to come up with various problem solving ideas that I was able to use in this challenge.

What issues/successes did you run into when translating your pseudocode to code?

The only issue was finding the method or way of doing what was in the pseudocode for hashes, but it wasnt too much trouble.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

We used the each method to iterate through the content. This was not dificult to implement.

=end