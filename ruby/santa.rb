class Santa

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
		cookie_type
	end

	def initialize
		puts "Initializing Santa instance ..."
	end
end

santa_class = Santa.new

#DRIVER CODE ------------------------->

p santa_class.speak
p santa_class.eat_milk_and_cookies("ginger bread")
