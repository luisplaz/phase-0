# Your Names
# 1)Ryan Zell
# 2)Luis Fernando Plaz

# We spent [1.5] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  error_counter = 3
#   #assignes arguments to hash, key for item to make and value to order quantity
  #compares values and subtracts from error counter.

#---------------------------------------#

library.each do |food|
  if library[food] != library[item_to_make]
    p error_counter -= 1
  end
end

#   #if the quantity argument to make does not equal the original hash value than subtract 1 from the error counter

#   if error_counter > 0
#     raise ArgumentError.new("#{item_to_make} is not a valid input")
#   end
#   #if error counter =0 than raise argument error

#---------------------------------------#
if library.has_key?(item_to_make) == false

  raise ArgumentError.new("#{item_to_make} is not a valid input")

end

 # serving_size = library.values_at(item_to_make)[0]

serving_size = library[item_to_make]
serving_size_mod = order_quantity % serving_size

    # We search for fixed quantity value related to item_to_make in hash. Then we set variable serving_size_mod to the remainder resulting from dividing the order quantity and the fixed quantity value in hash.

    case serving_size_mod
    when 0
      return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
    else
      library.each do |key, value|
        if value <= serving_size_mod
          suggested_amount = serving_size_mod/value
          return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. We also suggest making #{suggested_amount} of #{key}"
        end
      end
    end
  end

    p serving_size_calc("pie", 7)
    p serving_size_calc("pie", 8)
    p serving_size_calc("cake", 5)
    p serving_size_calc("cake", 7)
    p serving_size_calc("cookie", 1)
    p serving_size_calc("cookie", 10)
    p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

# What did you learn about making code readable by working on this challenge?

# It is very important that your code that its readable and that variable names
# make sense and that code blocks have a well defined structure so that if others need
# to make changes they can understand the code quickly and know where to make changes.

# Did you learn any new methods? What did you learn about them?

# I had seen has_key? method before but never used it, another was values_at. The method values_at returns an array,
# something I also did not know.

# What did you learn about accessing data in hashes? 

# It can be done pretty much the same way as with array except you provide a key and it returns the value associated with it.
# You can also access the key if needed with hash.key(value), this returns keys with that value.

# What concepts were solidified when working through this challenge?

# The importance of code readability, factoring and use of ruby syntax and methods.
