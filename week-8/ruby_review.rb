# OO Basics: Student


# I worked on this challenge [by myself, with: ].
# This challenge took me [4] hours.


# Pseudocode

# 1. Create student array with student objects (Passing name and score array)
# 2. Calculate Average dividing sum of scores in array with score array length.
# 3. Define letter grade from average already calculated.
# 4. Linear search goes through each array element and compares to the student name passed.
	#4.1 IF found return index number
	#4.2 ElSE return -1
# 5. Binary search sorts array, and obtains middle element.
	#5.1 IF element is equal to passed student name return index
	#5.2 Else if element is less than middle element search through array from start to middle element index.
	#5.2 Else if element is large than middle element search through array from middle element index to sorted array length.
	#5.2 ElSE return -1

# Initial Solution

# class Student
# 	attr_accessor :scores, :first_name, :average

# 	def initialize(name,scores)
# 		@first_name = name
# 		@scores = scores
# 		@average = average
# 		@letter_grade = letter_grade
# 	end

# 	def average

# 		score_sum = 0

# 		@scores.each do |x|

# 			score_sum+= x

# 		end

# 		score_average = score_sum/@scores.size

# 		return score_average

# 	end

# 	def letter_grade

# 		if @average >= 90

# 			letter_grade = "A"

# 		elsif @average >=  80

# 			letter_grade = "B"

# 		elsif @average >=  70

# 			letter_grade = "C"

# 		elsif @average >= 60

# 			letter_grade = "D"

# 		else

# 			letter_grade = "F"

# 		end

# 		return letter_grade

# 	end

# end

# def linear_search(array,student_name)

# 	index = 0
# 	found = false

# 	array.each do |x|

# 		if x.first_name == student_name

# 			return index
# 			found = true
# 		elsif
# 			index+=1
# 		end

# 	end

# 	if found == false

# 		return -1
# 	end

# end

# def binary_search(array,student_name)

# 	index = 0

# 	found = false

# 	sorted = array.sort_by do |item|

#     item.first_name

# 	end 

# 	puts "Looking for #{student_name}"

# 	puts "SORTED"

# 	sorted.each do |x|

# 		puts x.first_name
# 	end

# 	if sorted.length % 2 == 0 

# 		middle = sorted[((array.length/2).round)-1].first_name

# 		middle_index = ((array.length/2).round)-1

# 	else

# 		middle = sorted[((array.length/2).round)].first_name

# 		middle_index = (array.length/2)

# 	end

# 	puts "MIDDLE STUDENT IS #{middle} AT INDEX #{middle_index}"

# 	if student_name == middle

# 		puts "equal"

# 		return middle_index

# 	elsif student_name < middle

# 		puts "lower"

# 		sorted[0, middle_index].each do |x|

# 			if x.first_name == student_name

# 				return index
# 				found = true
# 			elsif
# 				index+=1

# 			end

# 		end

# 	elsif student_name > middle

# 		puts "higher"

# 		index = middle_index
		
# 		sorted[middle_index,sorted.length].each do |x|

# 			if x.first_name == student_name
# 				return index
# 				found = true
# 			elsif
# 				index+=1
# 			end

# 		end

# 	else

# 		index+=1

# 	end

# 	if found == false

# 		return -1
# 	end

# end

# student_1 = Student.new("Alex",[100,100,100,0,100])
# student_2 = Student.new("Luis",[100,100,100,0,100])
# student_3 = Student.new("John",[100,100,100,0,100])
# student_4 = Student.new("Andrew",[100,100,100,0,100])
# student_5 = Student.new("Peter",[100,100,100,0,100])

# students =[student_1,student_2,student_3,student_4,student_5]

# Refactored Solution

class Student
	attr_accessor :scores, :first_name, :average

	def initialize(name,scores)
		@first_name = name
		@scores = scores
		@average = average
		@letter_grade = letter_grade
	end

	def average

		score_sum = 0

		@scores.each {|x| score_sum+= x}

		score_average = score_sum/@scores.size

		return score_average

	end

	def letter_grade

		if @average >= 90

			letter_grade = "A"

		elsif @average >=  80

			letter_grade = "B"

		elsif @average >=  70

			letter_grade = "C"

		elsif @average >= 60

			letter_grade = "D"

		else

			letter_grade = "F"

		end

		return letter_grade

	end

end

def linear_search(array,student_name)

	index = 0
	found = false

	array.each do |x|

		if x.first_name == student_name
			return index
			found = true
		elsif
			index+=1
		end

	end

	if found == false

		return -1
	end

end

def binary_search(array,student_name)

	index = 0

	found = false

	sorted = array.sort_by {|item| item.first_name}

	if sorted.length % 2 == 0 

		middle = sorted[((array.length/2).round)-1].first_name

		middle_index = ((array.length/2).round)-1

	else

		middle = sorted[((array.length/2).round)].first_name

		middle_index = (array.length/2)

	end

	if student_name == middle

		return middle_index

	elsif student_name < middle

		sorted[0, middle_index].each do |x|

			if x.first_name == student_name
				return index
				found = true
			elsif
				index+=1

			end

		end

	elsif student_name > middle

		index = middle_index
		
		sorted[middle_index,sorted.length].each do |x|

			if x.first_name == student_name
				return index
				found = true
			elsif
				index+=1
			end

		end

	else

		index+=1

	end

	if found == false

		return -1
	end

end

student_1 = Student.new("Alex",[100,100,100,0,100])
student_2 = Student.new("Luis",[100,100,100,0,100])
student_3 = Student.new("John",[100,100,100,0,100])
student_4 = Student.new("Andrew",[100,100,100,0,100])
student_5 = Student.new("Peter",[100,100,100,0,100])

students =[student_1,student_2,student_3,student_4,student_5]


# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0

# # # # Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Additional Tests 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1

# Additional Tests 3:

p binary_search(students, "Alex") == 0
p binary_search(students, "NOT A STUDENT") == -1

# Reflection

=begin

What concepts did you review or learn in this challenge?

Reviewed iteration, each method as well as slice. If statements and array methods.

What is still confusing to you about Ruby?

Not much is confusing, sometime I have trouble understanding more complicated methods. Also, I am still confused
what the difference bewteen "" and '' is. 

What are you going to study to get more prepared for Phase 1?

Harder methods as well as maing recursive methods.

=end