#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [1] hours on this challenge.

class NameData

	attr_reader :name

	def initialize(student_name)
		@name = student_name
	end

end


class Greetings

	def initialize

		@new_student = NameData.new("Luis Fernando Plaz")
		
	end

	def hello

		puts "Hello #{@new_student.name}! How wonderful to see you today."

	end

end

greet = Greetings.new

greet.hello


# Reflection

=begin	
What are these methods doing?

They are setting or modifying variable values. Then returning said values.

How are they modifying or returning the value of instance variables?

They are using methods to update the value of variables and since most methods are very short the default return is returning last line.

What changed between the last release and this release?

They added an attr_reader and erased the method related to the task the reader now does.

What was replaced?

Method what_is_age with attr_reader.

Is this code simpler than the last?

Yes.

What changed between the last release and this release?

An attr_writer for age was now added. Now we dont have to call a method to change age.

What was replaced?

Method change_my_age with attr_writer.

Is this code simpler than the last?

Yes.

What is a reader method?

A method that returns the value of a variable.

What is a writer method?

A method that changes the value of a variable.

What do the attr methods do for you?

Make code simpler and make methods for calling or changing value obsolete if that the only task they have.

Should you always use an accessor to cover your bases? Why or why not?

Its recommended to use a writer and a reader instead of an accessor because its not a good thing to make all variables changeable.

What is confusing to you about these methods?

Nothing. I understood them completely.

=end