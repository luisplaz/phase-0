# Pseudocode

# Input: Hash of gorcery items/quantities

# Output: Item and quantity as String

# Make method that creates a hash map. Take in item as key and quantity as value. This Will add the key/value pair into the hash
# Make second method thats take key and removes key/value from hash
# Make third method to update value of a certain key. It takes key and value as argument.
# Last method takes in hashmap and prints keys and values.


# Initial Solution

# def create_grocery_hash

# 	grocery_hash = {}

# end

# def add_item_hash(hash,item,quantity)

# 	if hash.has_key?(item)

# 		hash[item] += quantity

# 	else

# 		hash[item] = quantity

# 	end

# end

# def remove_item_hash(hash,item)

# 	if hash.has_key?(item)

# 		hash.delete(item)

# 	end

# end

# def update_item_hash(hash, item, quantity)

#   if hash.has_key?(item)

#   hash[item] = quantity

#   end

# end


# def print_hash(hash)

#   hash.each do | key, value |

#   puts "For item: #{key}, quantity is: #{value}."

#   end

# end

# Refactor

def create_grocery_hash

	grocery_hash = {}

end

def add_item_hash(hash,item,quantity)

	hash.has_key?(item) ? hash[item] += quantity : hash[item] = quantity

end

def remove_item_hash(hash,item)

	hash.delete(item) if hash.has_key?(item)

end

def update_item_hash(hash, item, quantity)

	hash[item] = quantity if hash.has_key?(item)

end

def print_hash(hash)

	hash.each do | key, value |

		puts "For item: #{key}, quantity is: #{value}."

	end

end

grocery_list = create_grocery_hash

add_item_hash(grocery_list, "Lemonade", 2)

add_item_hash(grocery_list, "Tomatoes", 3)

add_item_hash(grocery_list, "Onions", 1)

add_item_hash(grocery_list, "Ice Cream", 4)

remove_item_hash(grocery_list, "Lemonade")

update_item_hash(grocery_list, "Ice Cream", 1)

print_hash(grocery_list)

=begin
	
What did you learn about pseudocode from working on this challenge?

From this challenge I learned that pseudocode has to be simple and to the point.
It should state mostly what we want the program to accomplish in a series of steps.
It should be clear and comprehensive even to those without coding experience.

What are the tradeoffs of using Arrays and Hashes for this challenge?

Well, first of all an array wont work for this challenge because you would need 2 of
them to store the key/value pair, and even with that youd need to keep them in order
so they dont get mixed up when searching for them. By using hashes we avoid any confusion
and store the pair together, we dont have to worry about order here.

What does a method return?

A method returns either the last line of code, by default, or whatever you tell it
to return (as long as it makes sense).

What kind of things can you pass into methods as arguments?

You can pass any object as an argument, it must be stated in the method though what arguments
it accepts.

How can you pass information between methods?

You can call a method within another method and if it returns something it can be used
in the initial method's code.

What concepts were solidified in this challenge, and what concepts are still confusing?

Various hash concepts and ruby codes were solidified in this challenge. The exact code
syntax is still hard to remember but with practice I think we will end up memorizing it.
	
=end