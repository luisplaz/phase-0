# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Integer
# Output: Symbol or Boolean
# Steps:

=begin
	
1. Set value for answer / Initialize variable solved as false
2. Provide guess value
3. Compare answer and guess value
	3.1 IF answer is equal to guess printo out :correct set solved as true
	3.2 ELSE IF answer is less than guess print out :high
	3.3 ElSE print our :low

4. Check if solved is true.
	4.1 IF true return true
	4.2 ELSE return false

=end


# Initial Solution

# class GuessingGame

# 	def initialize(answer)

# 		@answer = answer

# 		@solved = false

# 	end

# 	def guess(guess)

# 		if guess == @answer

# 			@solved = true
# 			return :correct

# 		elsif guess < @answer

# 			@solved = false
# 			return :low

# 		else
# 			@solved = false
# 			return :high
# 		end

# 	end

# 	def solved?

# 		@solved == true ? true : false

# 	end

# end

# Refactored Solution

class GuessingGame

	def initialize(answer)

		@answer = answer

		@solved = false

	end

	def guess(guess)

	if guess == @answer

		@solved = true
		return :correct

	elsif guess < @answer

		@solved = false
		return :low

	else
		@solved = false
		return :high
	end

	end

	def solved?

		@solved == true ? true : false

	end

end

# Reflection

=begin
	
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

Instance variables represent the default values of an item, its original state. A blank page will initially be blank
so its content is always initialized at 0. From there we call othr methods to add content to this page.

When should you use instance variables? What do they do for you?

They define initial states for objects. They should be used when creating a class, since it need to have default values defined.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

I had no problem with flow control. With if statements I was able to manage solving the problem, I also used the ternary exprssionfor solving.
Flow control basically works by evaluating expressions using the if and else statement, so when something satisfies a condition some action is triggered.
Once one condition is satisfied the flow ends.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?

Because symbols are immutable they cant be changed also they require less memory. I guess in this challenge we use symbols because we never want the
outcome to change from what is already coded.

=end