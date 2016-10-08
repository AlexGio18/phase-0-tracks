
# Virus Predictor

# I worked on this challenge [Chinh].
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative pulls data from the same location/ related data
# require needs to have the full filepath

require_relative 'state_data'

class VirusPredictor

  # pulling the data from the state_data.rb and setting to the variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #calling the the predicted_deaths and speed_of_spread, its taking the information
  #thats passed through from initialize and applying the two methods
  def virus_effects
    predicted_deaths
    speed_of_spread
    puts "#{@state} will lose #{@number_of_deaths} people in this outbreak and will spread across the state in #{@speed} months.\n\n"
  end

#private method keeps methods from being accessed outside of the class. This keeps the code modular and free of class methods breaking,
# or accessing them from the outside.
  private

  #predicted_deaths is a method that takes the population density data from a 
  #state and finds out how much percentage of the population will die.

    def predicted_deaths
    # predicted deaths is solely based on population density
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

    @number_of_deaths = (@population * percent).floor

  end  

#speed_of_spread method looks at population density for the state and gives you an
#estimated time for how long the virus will spread.

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      @speed = 0.5
    elsif @population_density >= 150
      @speed = 1
    elsif @population_density >= 100
      @speed = 1.5
    elsif @population_density >= 50
      @speed = 2
    else
      @speed = 2.5
    end

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |states, population_hash|
  VirusPredictor.new(states, population_hash[:population_density], population_hash[:population]).virus_effects
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
What are the differences between the two different hash syntaxes shown in the state_data file?
  The difference is that the state is the outside hash(a key), which is calling the population hash(the value).
  Within the population hash, there are two keys (population_density, population) and their respective values.

What does require_relative do? How is it different from require?
  require_relative works by calling on a related document within the same directory. As long as it's in the same directory, and
  the filename is called, it will be acquired.

  require is more general; it can be applied to multiple documents without being related, but the exact filepath is necessary.

What are some ways to iterate through a hash?
  .each is a good way to iterate through a hash, and setting the key and value types within the block. Another way might be using a
  loop, but would require more syntax, and would probably be less DRY.

When refactoring virus_effects, what stood out to you about the variables, if anything?
  The arguments being passed were redundant; all the data was being called in the initialize method and then passed through to the 
  private methods.

What concept did you most solidify in this challenge?
  I now know that arguments should not be passed within the internal methods of a class. All data is present during initiliaze, and 
  the instance methods are there to change that data, but not add to it.
=end