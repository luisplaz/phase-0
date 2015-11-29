# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode



# Initial Solution

def super_fizzbuzz(array)
	array.map! do |x|

		if x % 3 == 0 && x % 5 == 0
			x = "fizzbuzz"
		elsif x % 5 == 0
			x = "buzz"
		elsif x % 3 == 0
			x = "fizz"
		else
			x
		end
	end
end

array_1 = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]

print super_fizzbuzz(array_1)

# Refactored Solution






# Reflection