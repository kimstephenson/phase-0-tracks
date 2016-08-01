# Virus Predictor

# I worked on this challenge [by myself, with: Daniel ].
# We spent [1] hours on this challenge.

# EXPLANATION OF require_relative
#
#
#Links the state_data file to this file. Differs from require because it links a file based on the relative path, rather than the absolute path
require_relative 'state_data'

class VirusPredictor

  #Defines the attributes upon creating a new instance of the class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #Calls predicted_deaths and speed_of_spread on each state
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  #Uses an if statement to calculate predicted deaths based on population density
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #Calculates speed of spread based on the population density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, data|
 state = VirusPredictor.new( state, data[:population_density], data[:population])
 state.virus_effects
end


#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects

#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects

#california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects

#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects


#=======================================================================
# Reflection Section
#One is a string followed by a hash rocket, while the other is a symbol followed by value.
#Require_relative links a file by its relative path, while require links it by its absolute path.
#You can iterate through a hash using .each or .map.
#The variables in virus_effects were instance variables, so they did not need to be listed as parameters. The methods do not need to be passed parameters because the variables they're accessing, instance variables, are already available everywhere in the class.
#I learned some new things about classes in this challenge (the private method, etc.), learned about constants, and solidified some refactoring practices.