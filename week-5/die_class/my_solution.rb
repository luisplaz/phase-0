# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [2] hours on this challenge.

# 0. Pseudocode

# Input: Integer (Dice Sides)
# Output: Integer (Number Rolled)
# Steps:

# Define Dice Class
# Set Number Of Sides
# If Number of Sides is less than 1 show error message
# Else store number of sides in a varable calles sides.
# Define method that returns number of sides
# Define method that generates a random number from 1 to the max number of sides of the dice.
# Return randome number if method is called upon.


# 1. Initial Solution

class Die

  def initialize(sides)

  	if sides < 1 

  		raise ArgumentError.new("Dice has to have at least 1 side")
    
    else

    	@sides = sides

    end

  end

  def sides

  	return @sides

  end

  def roll
	
	return 1 + rand(@sides)

  end

end



# 3. Refactored Solution

class Die

  def initialize(sides)

  	sides < 1 ? (raise ArgumentError.new("Dice has to have at least 1 side")) : (@sides = sides)

  end

  attr_reader :sides

  def roll
	
	return 1 + rand(@sides)

  end

end

# 4. Reflection

=begin
	
What is an ArgumentError and why would you use one?

ArgumentErrors lets the developer create a certain range of acceptable conditions for a certain object, variable etc. When these
conditions are not met an alarm is raised and the user is presented with a error message letting them know what was expected, and
what is needed for the code to run.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

I implemented the rand method to create random numbers for the roll. It was easy to implement the only difficulty was figuring out that
it creates a random number from 0 until the integer passed in as argument excluding this number. So 1 had to be added to avoid rolling 0 
and to include the last number.

What is a Ruby class?

A ruby class is a kind of blueprint for an object you want to create. It lets you set the initial values of certain object characteristics
and lets you assign certain methods (actions) to the object.

Why would you use a Ruby class?

We would use a ruby class to avoid writing more code than needed. We make a blueprint for an object that will be used along all our code,
this way avoiding creating it every time we want to do something new.

What is the difference between a local variable and an instance variable?

A local variable only exists in the scope of the block of code that contains it. An istance variable exists in a class instance and can be called
by all methods inside this istance. Local variables are written in lowercase and have no symbols istance variables are written like so: @isntance_variable.
and need a @ at the beginning.

Where can an instance variable be used?

Anywhere inside the class instance where they have been defined.

=end