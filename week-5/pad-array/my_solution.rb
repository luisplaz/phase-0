# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [ 1 ] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? Array, integer, any other object
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

=begin
pseudocode

1. Create a non destructive pad method that creates an array with an array as an argument as well as an array length and an optional argument.
2. The method would create a new local variable new_array
3. Create a new array with the 2 other arguments (length and optional).
3. This variable would then store the original array being passed through and would add 
the new array to it if and only if the new length is bigger than the original.
4. Return the sum of both arrays.


1. Create a destructive pad method that modifies an array with an array as an argument as well as an array length and an optional argument.
2. The method would add on slots corresponding to the length value in argument only if original array length is smaller than new length value
these would take the value of the optional argument in the case that it exists.
4. Return the array

=end


# 1. Initial Solution

def pad!(array, min_size, value = nil) #destructive

if array.length >= min_size

return array

else

array << Array.new(min_size - array.length,value)

end

end

def pad(array, min_size, value = nil) #non-destructive

if array.length >= min_size

return new_array = array.clone

else

new_array = array.clone	

return new_array + Array.new(min_size - array.length,value)

# new_array.concat Array.new(min_size - array.length,value)

end

end

# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive

array.length >= min_size ? array : array << Array.new(min_size - array.length,value)

end

def pad(array, min_size, value = nil) #non-destructive

array.length >= min_size ? new_array = array.clone : new_array = array.clone + Array.new(min_size - array.length,value)

end

# 4. Reflection