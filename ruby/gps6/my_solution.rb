# Virus Predictor

# I worked on this challenge by myself.
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Allows us to access the data on each of the states from state data in this program
#
require_relative 'state_data'

class VirusPredictor

# Creates a new instance of the Virus predictor class, and assigns three attributes, the state, its population, and its population density
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# Runs both of the methods below without having to specify the in intake values. It will only return the speed, but because both the methods it uses have print statements, it will print all the info to the console. 
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

#Makes below methods inaccessible from outside the class. If it were above virus effects, there would be no way to access them in the driver code.
  private


# Calculates the number of deaths that could be expected in an outbreak, by categorizing broadly by population density, and depending on it, calculating the number of deaths as a function of the population, rounded down. Then it prints the results as a sentence.
  def predicted_deaths
    # predicted deaths is solely based on population density
    unless @population_density <= 50 
    	number_of_deaths = (@population / 10 * (@population_density/50).floor )
    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# Calculates how long it will take the outbreak to spread across the state, based solely on broad categories of population density. Prints it as a sentence.

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 2.5
    pop = @population_density
    while pop >= 50 
    	pop -= 50 
    	speed -= 0.5
    end

    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, data|
	state = VirusPredictor.new(state, data[:population_density], data[:population])
	state.virus_effects
end

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
1. What are the differences in the hash syntaxes used in state_data? 
	> The first using a string (the state name), while within each state is a hash using keys (e.g. :population)
2. What does require_relative do and how does it differ from require?
	> Require_relative uses another ruby file within the same directory. require can be used to incorporate a variety of ruby (libraries?) created by others
3. What are some ways to interate through a hash?
	> .each is a solid choice. You could also, I suppose, set a counter to the hash length and count down, or use it with .times
4. When refactoring virus_effects what stood out?
	> Virus_effects made perfect sense to me until I really considered how it was using attributes. Was difficult to imagine making it conciser, but there we have it!
5. What concept did you solidify in this challenge?
	> Referencing hashes, and hashes within hashes, as well as using attributes. Private methods was also a new concept for me. 
=end