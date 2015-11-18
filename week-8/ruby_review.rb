# OO Basics: Student


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode

# 1. Create student array
# 2. Pass Array Into Method



# Initial Solution

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

		@scores.each do |x|

			score_sum+= x

		end

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

student_1 = Student.new("Alex",[100,100,100,0,100])
student_2 = Student.new("Luis",[100,100,100,0,100])
student_3 = Student.new("John",[100,100,100,0,100])
student_4 = Student.new("Andrew",[100,100,100,0,100])
student_5 = Student.new("Peter",[100,100,100,0,100])

students =[student_1,student_2,student_3,student_4,student_5]

# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0

# # Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# # Additional Tests 2:

# p linear_search(students, "Alex") == 0
# p linear_search(students, "NOT A STUDENT") == -1

# Reflection

=begin
What concepts did you review or learn in this challenge?


What is still confusing to you about Ruby?


What are you going to study to get more prepared for Phase 1?

=end