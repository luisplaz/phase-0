# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
#1. What is the name of the file with the error?

# The file name is errors.rb

# 2. What is the line number where the error occurs?

# The error occurs on line 8.

# 3. What is the type of error message?

# This is a syntax error

# 4. What additional information does the interpreter provide about this type of error?

#The interpreter says it did not expect an "=" sign, rather it expected an $end.

# 5. Where is the error in the code?

# An equal sign not expected between "I'm going home" and cartmans_phrase.

# 6. Why did the interpreter give you this error?

# Variable assigmnet is backwards. The variable needs to be first and then the values it will store.

# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
   end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#  errors.rb
# 2. What is the line number where the error occurs?
# Line 194
# 3. What is the type of error message?
#Syntax Error
# 4. What additional information does the interpreter provide about this type of error?
#Unexpected end of input, expected keyword end
# 5. Where is the error in the code?
# An end is expected after the while loop.
# 6. Why did the interpreter give you this error?
#  End needed to close while.

# --- error -------------------------------------------------------

# south_park = 'cartman'

# 1. What is the line number where the error occurs?
# Line 60
# 2. What is the type of error message?
# Name Error
# 3. What additional information does the interpreter provide about this type of error?
# Undefined Local variable or method 'south_park'
# 4. Where is the error in the code?
# The error is after south_park, we need to assign something to the variable.
# 5. Why did the interpreter give you this error?
# Because it encountered a variable with no value.

# --- error -------------------------------------------------------

# def cartman()

# end

# 1. What is the line number where the error occurs?
# Line 75
# 2. What is the type of error message?
# No Method Error
# 3. What additional information does the interpreter provide about this type of error?
# Undefined Local variable or method 'cartman'
# 4. Where is the error in the code?
# Before and after cartman. 
# 5. Why did the interpreter give you this error?
# Interpreter encountered an undefined method. 

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase()

# 1. What is the line number where the error occurs?
# Line 92
# 2. What is the type of error message?
#  Argument error
# 3. What additional information does the interpreter provide about this type of error?
#  Wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# The error is in the start of the code.
# 5. Why did the interpreter give you this error?
# The interpreter gave this error because this method does not take any arguments as it is.
# We can make it take one argument and make that argument appear in the message or erase the argument on the method call.

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says('AssBurger')

# 1. What is the line number where the error occurs?
# Line 112
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# Wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# In the method call at the end.
# 5. Why did the interpreter give you this error?
# Because it encountered a method call that was not giving the required amount fo arguments to the method.
# Adding an argument to the method call should solve the problem.

# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!','kyle')

# 1. What is the line number where the error occurs?
# Line 132
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# Wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# Its in the last line of code, in the arguments section.
# 5. Why did the interpreter give you this error?
# Because it encountered a method call that did not have the amount of arguments required by the method.

# --- error -------------------------------------------------------

# "Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# Line 151
# 2. What is the type of error message?
# Type Error
# 3. What additional information does the interpreter provide about this type of error?
#  String cant be coerced into Fixnum
# 4. Where is the error in the code?
# In the second element in the multiplication
# 5. Why did the interpreter give you this error?
# Because it encountered a multiplication between and integer and a string in that order. If we echange 
#this position it will repeat the string 5 times.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/2


# 1. What is the line number where the error occurs?
# Line 167
# 2. What is the type of error message?
# ZeroDivision Error
# 3. What additional information does the interpreter provide about this type of error?
# Divided by 0
# 4. Where is the error in the code?
# In the value of the variable
# 5. Why did the interpreter give you this error?
# Because any number divided by zero becomes undefined. We have to give it a solvable division.

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# Line 183
# 2. What is the type of error message?
# LoadError
# 3. What additional information does the interpreter provide about this type of error?
# Cannot load such file -- /Users........
# 4. Where is the error in the code?
# in the path between quotations
# 5. Why did the interpreter give you this error?
# Because it cannot find the file since it is not in my pc.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?

# The second error was the most difficult to read beacuse of the fact that
# the line presented in the error notice was not where the error was.

# How did you figure out what the issue with the error was?

# Looking at the code and error message, using the material and with trials of the current code.

# Were you able to determine why each error message happened based on the code? 

# Almost all of them, some required a bit of research.

# When you encounter errors in your future code, what process will you follow to help you debug?

# First I will read the error message and divide it into parts, look at the error line and
# think about the way the code is written. If this fails ill look up the error message.
