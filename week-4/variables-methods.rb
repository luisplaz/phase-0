# MINI CHALLENGE ONE

puts 'Hello, can I have your first name please'

first_name = gets.chomp

puts 'Now can I have your middle name please'

middle_name = gets.chomp

puts 'Lastly can I have your last name please'

last_name = gets.chomp

whole_name = first_name + ' ' + middle_name + ' ' + last_name

puts 'Hello there ' + whole_name + ' , Nice to meet you !!'


# MINI CHALLENGE TWO

puts 'Hello again, can I have your favorite number'

fav_number = gets.chomp

new_fav_number = fav_number.to_i + 1

puts 'May I suggest this bigger and better number: ' + new_fav_number.to_s