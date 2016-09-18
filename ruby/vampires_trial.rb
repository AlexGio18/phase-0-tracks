vamp_con3 = 'Probably a vampire.'
vamp_con2 = '...Probably not a vampire.'

puts 'List your allergies:'
	allergy = gets.chomp
		
	while allergy != 'sunlight' 

		puts 'List your allergies:'
		allergy = gets.chomp
		
		if allergy == 'sunlight'
			puts vamp_con3
			break 

		elsif allergy.include? 'no'
			puts vamp_con2		
			break
		end

	end


=begin
vamp_con1 = 'Definitely a vampire!'

vamp_con2 = '...Probably not a vampire.'

vamp_con3 = 'Probably a vampire.'

vamp_con4 = 'Almost certainly a vampire.'

vamp_con5 = 'Results inconclusive'



vampire_name = true
werewolf_name = false
werewolf_age = true
vampire_age = false
wolves_like_garlic = true
vampires_like_garlic = false
wolves_like_healthinsurance = true
vampires_like_healthinsurance = false



puts 'What is your name?'
name = gets.chomp

if name.downcase == 'tu fang' || name.downcase == 'drake cula' || name.downcase == 'dracula' || name.downcase == 'nosferatu'
	
	vampire_name 

	else
		werewolf_name

end

puts 'How old are you?' 

age = gets.chomp

puts 'What year were you born?'

birthyear = gets.chomp

if age.to_i + birthyear.to_i == 2016

		werewolf_age

	else
		vampire_age
end


puts 'Our company cafeteria serves garlic bread. Should we order some for you (Yes/No)?'

garlicbread_reply = gets.chomp

if garlicbread_reply.downcase == 'yes' || garlicbread_reply.downcase == 'yeah'
	
	wolves_like_garlic 

else
	vampires_like_garlic
end

when 
	vampire_name 
	puts vamp_con1
	
	elsif
		werewolf_name  && werewolf_age  && wolves_like_garlic 
		
		puts vamp_con2

	elsif 
		werewolf_name && werewolf_age  && vampires_like_garlic 
		puts vamp_con3
		
	else
		puts vamp_con5
end
=end
