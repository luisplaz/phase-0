# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# takes a string and is the relative path to the file we're going to use
# require takes a full path, require_relative is for files in the same directory
require_relative 'state_data'

class VirusPredictor

  # works like a javascript constructor, it will initialize the value of all variables in the instance of class VirusPredictor
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects
    # calls two other methods, and it gives them the arguments already defined up top as instance variables
    predicted_deaths
    speed_of_spread
  end

  private

  def predicted_deaths
    # it will print out the number of deaths in the state that's being passed in as an argument, and depending on the population density it will do the calculation, or the way it calculates the number of deaths
    if @population_density >= 200
      percent = 0.4
    elsif @population_density >= 150
      percent = 0.3
    elsif @population_density >= 100
      percent = 0.2
    elsif @population_density >= 50
      percent = 0.1
    else
      percent = 0.05
    end

    number_of_deaths = (@population * percent).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread #in months
    # Print out on a new line the virus will spread depending on the population density of the state that's being passed in, the speed value is initialized at zero and is added to based on the state being passed in
    # speed = 0.0

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
def all_states(hash)
  hash.each {|key, value| VirusPredictor.new(key, value[:population_density], value[:population]).virus_effects}
end

all_states(STATE_DATA)
# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

=begin

What are the differences between the two different hash syntaxes shown in the state_data file?

I only see one and im guessing it the fact that it in all caps and is considered a constant.

What does require_relative do? How is it different from require?

Require_relative takes a string and is the relative path to the file we're going to use
require takes a full path, require_relative is for files in the same directory

What are some ways to iterate through a hash?

Some ways are each_key,each_pair,each_value. It depends on what you want from hash.

When refactoring virus_effects, what stood out to you about the variables, if anything?

They were being called on again for a method that could access them directly.

What concept did you most solidify in this challenge?

Ruby scope, hash methods and refactoring.



=end