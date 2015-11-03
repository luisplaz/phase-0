# Die Class 2: Arbitrary Symbols

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Array of strings
# Output: String
# Steps:

=begin
	
1. If passed array is empty show error message
2. Else 
	2.1 Count number of string in array
	2.2 Set this number as instance variable sides.

3. If rolled method is called
	3.1 Randomily Select a String
	3.2 Return Selected String
	
=end


# Initial Solution

# class Die

#   def initialize(labels)

#   	if labels.size < 1

#   		raise ArgumentError.new("Empty array. An Array with at least on element is needed")

#   	else	

#   	@dice = labels

#   	@sides = labels.size

#   end

#   end

#   def sides

#   	return @sides

#   end

#   def roll

#   	@dice[rand(@sides)]

#   end

# end

# Refactored Solution

class Die

  def initialize(labels)

  	if labels.size < 1

  		raise ArgumentError.new("Empty array. An Array with at least on element is needed")

  	else	

  	@dice = labels

  	@sides = labels.size

  end

  end

  def sides

  	return @sides

  end

  def roll

  	@dice.sample

  end

end

# Reflection

=begin
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

The main difference is the input, this one needed to analize the size of the array and assign it to the side variable instead of having the sides number
as input directly.

What does this exercise teach you about making code that is easily changeable or modifiable?

It teaches that making code easily changeable makes you save a lot of time. In this case maintaining the overall logic and just chaging one or another method
we were able to make the program do what we wanted.

What new methods did you learn when working on this challenge, if any?

I learned the sample method. It returns the element in random slot from an array

What concepts about classes were you able to solidify in this challenge?

The whole construction of classes and the implementation of the initialize method.

=end