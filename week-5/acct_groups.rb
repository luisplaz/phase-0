# PSEUDOCODE

=begin

# Create empty container to store created groups, Create counter set to 1.

# Check IF list of cohort students has a number of students perfectly divisible by 3.

# IF list is perfectly divisible by 3

	# While there are still students on list

		# Remove 3 students and Create a new group and add this group to the created group container.
		# When list has no more students, print EACH group in created group container with group number equal to counter.
		# Increase counter by one

# Check IF list of cohort students has a number of students divisible by 4 or IF its division produces a remainder of 3.

	# While there are still students on list

		# Remove 4 students and Create a new group and add this group to the created group container.

			# If the list reaches a number of 3 left students
				# Remove rest of students and Create a new group and add this group to the created group container.

		# When list has no more students, print EACH group in created group container with group number equal to counter.
		# Increase counter by one

# Check IF list of cohort students has a number of students divisible by 5 or IF its division produces a remainder of 4 or 3.

	# While there are still students on list

		# Remove 5 students and Create a new group and add this group to the created group container.

			# If the list reaches a number of 4 left students
				# Remove rest of students and Create a new group and add this group to the created group container.
			# Else If the list reaches a number of 3 left students
				# Remove rest of students and Create a new group and add this group to the created group container.

		# When list has no more students, print EACH group in created group container with group number equal to counter.
		# Increase counter by one
#
=end


#INITIAL SOLUTION


# def make_acc_group(array)

# 	all_groups = []

# 	counter = 1

# 	if array.length%3 == 0

# 		while array.empty? != true

# 			all_groups << array.pop(3)

# 		end

# 		puts 'This is the list divided into acountability groups of 3'

# 		all_groups.each do |accgroup|

# 			print "Group #{counter} :"

# 			print accgroup

# 			puts " "

# 			counter += 1
# 		end

# 	elsif array.length%4 == 0 || array.length%4 == 3

# 		while array.empty? != true

# 			all_groups << array.pop(4)

# 			if array.length == 3

# 				all_groups << array.pop(3)

# 			end

# 		end

# 		puts 'This is the list divided into acountability groups of 4'

# 		all_groups.each do |accgroup|

# 			print "Group #{counter} :"

# 			print accgroup

# 			puts " "

# 			counter += 1
# 		end

# 	elsif array.length%5 == 0 || array.length%5 == 4 || array.length%5 == 3

# 		while array.empty? != true

# 			all_groups << array.pop(5)

# 			if array.length == 4

# 				all_groups << array.pop(4)

# 			elsif array.length == 3

# 				all_groups << array.pop(3)
				
# 			end

# 		end

# 		puts 'This is the list divided into acountability groups of 5'

# 		all_groups.each do |accgroup|

# 			print "Group #{counter} :"

# 			print accgroup

# 			puts " "

# 			counter += 1
# 		end

# 	else

# 		puts "Can't Divide Cohort In Groups of at least 3. Please Complete Cohort List For Proper Group Creation."

# 		x = 3 - array.length%5

# 		puts "Need #{x} person to be able to create groups with current specifications."

# 	end

# end


#REFACTORED SOLUTION

def make_acc_group(array)

	counter = 1

	all_groups = []

	if array.length%3 == 0

		puts 'This is the list divided into acountability groups of 3'

		all_groups = array.each_slice(3).to_a

		all_groups.each do |accgroup|

			print "Group #{counter}: #{accgroup} \n" 

			counter += 1
		end

	elsif array.length%4 == 0 || array.length%4 == 3

		puts 'This is the list divided into acountability groups of 4'

		all_groups = array.each_slice(4).to_a

		all_groups.each do |accgroup|

			print "Group #{counter}: #{accgroup} \n" 

			counter += 1
		end

	elsif array.length%5 == 0 || array.length%5 == 4 || array.length%5 == 3

			all_groups = array.each_slice(5).to_a

		puts 'This is the list divided into acountability groups of 5'

		all_groups.each do |accgroup|

			print "Group #{counter}: #{accgroup} \n" 

			counter += 1
		end

	else

		x = 3 - array.length%5

		puts "Can't Divide Cohort In Groups of at least 3. Please Add #{x} person(s) to cohort"

	end

end

#DRIVER CODE

group_list = ['Caroline Artz','Syema Ailia','Alan Alcesto','Daniel Andersen','James Artz','Darius Atmar','Brian Bensch','Nicola Beuscher','Kris Bies','Logan Bresnahan','William Brinkert','Laura C.','Scott Chou','Bernice Anne W Chua','Abraham Clark','Jon Clayton','Kevin Corso','Jacob Crofts','John D.','Katy D.','Emmanuel Kaunitz','Amaar Fazlani','Solomon Fernandez','Edward Gemson','Jamar Gibbs','Chris Gomes','Will Granger','Christopher M.Guard','Adell H.','James Hwang','Matt H.','Michael H.','Peter H.','Ryan Ho','Igor Kazimirov','Walter Kerr','Karla King','Nruthya Lakshminarasimhan','Becky Lehmann','Malia Lehrer','Carolina Medellin','Timothy Meixell','Lorena Mesa','Chris Miklius','Joshua Monzon','Shea Munion','Bryan Munroe','Neal Peters','Trevor Newcomb','Aleksandra Nowak','Morgan O.','Fatma Ocal','Van Phan','Luis Fernando Plaz','Natalie Polen','Alicia Quezada','Celeen R.','Jessie Richardson','Gary S.','Iulia S.','Nimi Samocha','Zach Schatz','Tal Schwartz','Pratik Shah','Josh Shin','Shawn Spears','Sasha Tailor','Nil Thacker','Natasha Thapliyal','Sabrina Unrein','Brian Wagner','Clinton Weber','Gregory Wehmeier','Michael Whelpley','Alexander Williams','Peter N Wood','Caitlyn Y.','Ryan Zell']

make_acc_group(group_list)

#REFLECTION

=begin
What was the most interesting and most difficult part of this challenge?

Most dificult part was making sure that all groups had at least 3 people in them. I decided to stop the program if it was not possible
and output a message telling the user to add more people.

Do you feel you are improving in your ability to write pseudocode and break the problem down?

Yes. I think I had written it badly before but adjusted it in this challenge.

Was your approach for automating this task a good solution? What could have made it even better?

I think it was a good solution, and a short one if we take out all the string output. I think it cant be imporved as of now, maybe the code
can be grouped a bit more.

What data structure did you decide to store the accountability groups in and why?

Arrays is perfect for this as we are making a list of lists.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

Yes slice and to_a. Slice just cuts up the array in the pieces you ask it to and to_a makes them into an array.

=end