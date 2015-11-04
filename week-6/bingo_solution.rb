# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # 1. Generate a number from 1-100.
  # 2. Generate letter (b-i-n-g-o).

# Check the called column for the number called.
  # 1. Search array for letter.
  # 2. Once letter found search array the letter represents.

# If the number is in the column, replace with an 'x'
  # 1.Compare generated number with number in the array assigned to the letter.
  # 2. IF number is found replace slot value with "X".

# Display a column to the console
  # 1. Print Column array

# Display the board to the console (prettily)
  # 1. Print column array
  # 2. Print Number array

# Initial Solution

class BingoBoard

  attr_accessor :board

  def initialize(board)

    @bingo_board = board

  end

  def get_board

    return @bingo_board
  
  end

  def set_board(board_new)

    @bingo_board = board_new

  end

end

def call

    bingo = {"B"=>0,"I"=>1,"N"=>2,"G"=>3,"O"=>4}

    letter =  bingo.keys.to_a.sample

    slot = bingo[letter]

    number = rand(101)

    return slot,number

end


def check(board,array)

column_check = board[array.first]

print column_check

print array.last

if column_check.include?(array.last)

column_check.map! { |x| x == array.last ? x :  }.flatten!



else

end

end


board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

new_board = new_game.get_board

print new_board

puts "   "

call_1 = call
print call_1

puts "   "

check(new_board,call_1)




# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE



#Reflection

