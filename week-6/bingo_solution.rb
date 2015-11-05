# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # 1. Generate a number from 1-100.
  # 2. Generate letter (b-i-n-g-o).
  # 3. Return number letter pair as array

# Check the called column for the number called.
  # 1. Check number letter pair array
  # 2. Create variable column set to nil
  # 3. Check what column corresponds to letter set this value to variable "column"
  # 4. Go element by element and check in each element the value in the corresponding letter column
  # 5. IF element is equal to the number in number letter pair array the replace with an X.
  #    ELSE do nothing.
  # 6. Return new array.

# Display a column to the console
  # 1. Print each element of each array corresponding to letter column to console.

# Display the board to the console (prettily)
  # 1. Print Array by array to console

# Initial Solution

class BingoBoard

  attr_accessor :bingo_board

  def initialize(board)

    @bingo_board = board

  end

end

def call

  column_array = ["B","I","N","G","O"]

  letter =  column_array.sample

  number = rand(100) + 1

  return [letter,number]

end


def check(array_1,array_2)

  puts "Calling: #{array_1}\n\n"

  case array_1[0]

  when "B"

    column = 0

  when "I"

   column = 1

 when "N"

   column = 2

 when "G"

   column = 3

 when "O"

  column = 4

end

array_2.each do |x|

  if x[column] == array_1[1]

    x[column] = "X"

  else

    x = x

  end

end

return array_2

end

def print_array(array)

column_number = 1

puts "BINGO BOARD".center(20)
puts "______________________\n\n"
puts "[ B   I   N   G   O] \n\n"

array.each do |x|

  print "#{x}\n"

  column_number += 1

end

puts "______________________\n\n"

end


board = [[47, 44, 71, 8, 88],
[22, 69, 75, 65, 73],
[83, 85, 97, 89, 57],
[25, 31, 96, 68, 51],
[75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

# check(call,new_game.bingo_board)

call_1 = ["B",22]

new_game.bingo_board = check(call_1,new_game.bingo_board)

call_2 = ["G",68]

new_game.bingo_board = check(call_2,new_game.bingo_board)

print_array(new_game.bingo_board)

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE



#Reflection