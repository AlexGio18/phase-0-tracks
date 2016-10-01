#CLASS CODE ------------------------->
class Santa
	def initialize(name, gender, ethnicity)
		@name = name
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
		cookie_type
	end



	#getter methods
	def name
		@name
	end

	def gender
		@gender
	end

	def ethnicity
		@ethnicity
	end

	def reindeer_ranking
		@reindeer_ranking
	end
	
	#new methods
	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer)
		reindeer_index = @reindeer_ranking.index(reindeer)
		@reindeer_ranking.delete_at(reindeer_index)
		@reindeer_ranking[-1] = reindeer
	end

	#gender setter method
	def gender= (new_gender)
		@gender = new_gender
	end
end

santas = []
example_names = ["Carston", "Vida","Miguela","Bob","Cath","Tysson","Gauté"]
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
	

example_genders.each_index do |i|
	santas << Santa.new(example_names[i], example_genders[i], example_ethnicities[i])
	puts "Initializing Santa..."
	puts "This Santa's name is #{santas[i].name}, gender is #{santas[i].gender} and ethnicity is #{santas[i].ethnicity}."
end

#DRIVER CODE (release 2) ------------------------->
p santas[1].name
p santas[2].celebrate_birthday
puts
puts "original gender"
p santas[0].gender
puts
puts "newly assigned gender"
p santas[0].gender=("transgender")
puts
puts "Getting mad at a reindeer:"
p santas[3].reindeer_ranking
puts
puts "Gets sent to the back of the ranks"
p santas[3].get_mad_at("Dancer")
puts
puts "Now at the back"
p santas[3].reindeer_ranking
#DRIVER CODE (release 1) ------------------------->
# p santas[1]
# p santas[2,3]

#DRIVER CODE (release 0) ------------------------->
#santa_class = Santa.new
#p santa_class.speak
#p santa_class.eat_milk_and_cookies("ginger bread")

