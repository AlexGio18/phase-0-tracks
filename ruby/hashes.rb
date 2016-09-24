=begin
1. create a hash that asks the user for name, age, number of children, decor theme
2. store each input as a hash key
3. print out hash information
4. prompt user if they want to make changes
5. use boolean, if none exit program
6. if response includes a key type, ask for new input
7. change symbol in hash to reflect new data
8. print changes
=end

client_details = {}

def print_client_details(client_details)
	puts'...'
	sleep(1.0)
	puts'PROCESSING...'
	sleep(0.5)
	p client_details
end

def to_boolean(str)
     return true if str.include? "yes"
     return false if str.include? "no"
     return nil
end

puts "Clients Name:"
client_details[:name] = gets.chomp

puts "Clients Age:"
client_details[:age] = gets.chomp.to_i
	
puts "Number of Children:"
client_details[:num_children] = gets.chomp.to_i

puts "Are they a fan of grecian architecture? (yes/no)"
client_details[:grecian_arch] = to_boolean(gets.chomp)

print_client_details(client_details)

puts "To make changes, input the client's information type you wish to change (or type 'none' to exit):"
response = gets.chomp

	if	response == 'none'
		puts 'Ending Program...' 


		elsif response.downcase.include? "name"
			response = 'name'
			response = response.to_sym
			puts "New Name info:"
			client_details[response] = gets.chomp
			print_client_details(client_details)

		elsif response.downcase.include? "age"
			response = 'age'
			response = response.to_sym
			puts "New Age info:"
			client_details[response] = gets.chomp.to_i

			print_client_details(client_details)

		elsif response.downcase.include? "children"
			response = 'num_children'
			response = response.to_sym
			puts "New children info:"
			client_details[response] = gets.chomp.to_i

			print_client_details(client_details)

		elsif response.downcase.include? "greek" || "grecian" || "arch"
			response = 'grecian_arch'
			response = response.to_sym
			puts "So... do they like grecian architecture?(yes/no)"
			client_details[response] = to_boolean(gets.chomp)
			print_client_details(client_details)
	else
		puts 'Invalid Input...'
end
