# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
#p array[1][1][1][0]
p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]

# ============================================================

# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
#p nested_data[:array][1][hash:]
p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |x|

	if x.is_a? Integer

		x+=5

	else x.kind_of? Array

		x.map! do |y|

			y+=5

		end

	end

end

print number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! do |x|

	if x.is_a? String

		x+='ly'

	else x.kind_of? Array

		x.map! do |y|

			if y.is_a? String

				y+='ly'

			elsif y.is_a? Array

				y.map! do |z|

					z+='ly'

				end

			end

		end

	end
end

print startup_names

# Reflection

# What are some general rules you can apply to nested arrays?

# One important rule is to always reset the slot count everytime you encounter a nested array. With this I mean that if there is
# an array in the elements of array_1, this array will have slots as well starting with 0 for the first one. So accesing the first
# element of the array located in the second slot of an array one would first need to access slot [1] of the first array and then
# slot [0] of the second array.

What are some ways you can iterate over nested arrays?

You can simply call the cell locations in one line if one element wants to be accessed and we know its location like so array[0][1][2]
This will access the third element in the second array of the first array of the initial array (if this makes any sense....). Or we can
use the each method and iterate through all the array elements and IF another array is encountered another each method is implemented.

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

After some research it seems each method is the best way to iterate through a nested array, so I used what I was familiar with.