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

	
end

santas = []
example_names = ["Carston", "Vida","Miguela","Bob","Cath","Tysson","Gauté"]
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
	

example_genders.each_index do |i|
	santas << Santa.new(example_names[i], example_genders[i], example_ethnicities[i])
end

santas
#DRIVER CODE ------------------------->
p santas[1]
p santas[2,3]

