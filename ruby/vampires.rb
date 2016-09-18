vamp_con1 = 'Definitely a vampire!'

vamp_con2 = '...Probably not a vampire.'

vamp_con3 = 'Probably a vampire.'

vamp_con4 = 'Almost certainly a vampire.'

vamp_con5 = 'Results inconclusive.'


puts 'How many employees will be processed?'

employees_to_process = gets.chomp
while employees_to_process.to_i > 0

	puts 'What is your name?'
	name = gets.chomp

	if name.downcase == 'tu fang' || name.downcase == 'drake cula' || name.downcase == 'dracula' || name.downcase == 'nosferatu'
		
		vampire_name = true

		else
			vampire_name = false

	end

	puts 'How old are you?' 

	age = gets.chomp

	puts 'What year were you born?'

	birthyear = gets.chomp

	if age.to_i + birthyear.to_i == 2016 

			werewolf_age = true

		else
			werewolf_age = false
	end


	puts 'Our company cafeteria serves garlic bread. Should we order some for you (Yes/No)?'

	garlicbread_reply = gets.chomp

	if garlicbread_reply.downcase == 'yes' || garlicbread_reply.downcase == 'yeah'
		
		wolves_like_garlic = true

	else
		wolves_like_garlic = false
	end

	puts 'Would you like to enroll in the company’s health insurance (Yes/No)?'

	healthinsurance_reply = gets.chomp

	if healthinsurance_reply.downcase == 'yes' || healthinsurance_reply.downcase == 'yeah'

		wolves_like_healthinsurance = true

	else
		wolves_like_healthinsurance = false
		
	end
	
# I really struggled with this loop. I finally got it to output correctly, but it needs to loop at least once unless you input sunlight.
puts 'List your allergies:'
	allergy = gets.chomp

	while allergy != 'sunlight' 

		allergy = gets.chomp
		
		if allergy == 'sunlight'
			break 

		elsif allergy.include? 'no'		
			break
		end

	end


	if vampire_name == true
		puts vamp_con1
		puts ' '

	elsif 
		allergy == 'sunlight'
		puts vamp_con3
		puts ' '
		
		elsif
			vampire_name == false && werewolf_age == true && (wolves_like_garlic == true || wolves_like_healthinsurance == true)
			puts vamp_con2
			puts ' '

		elsif 
			vampire_name == false && werewolf_age == false && wolves_like_garlic == false && wolves_like_healthinsurance == false
			puts vamp_con4
			puts ' '

		elsif 
			vampire_name == false && werewolf_age == false && (wolves_like_garlic == false || wolves_like_healthinsurance == false)
			puts vamp_con3
			puts ' '
			
		else
			puts vamp_con5
			puts ' '
	end

employees_to_process = employees_to_process.to_i - 1
	
	if employees_to_process == 0
		break
	end
end

puts 'Actually, never mind! What do these questions have to do with anything? Let\'s all be friends.'
puts ' '