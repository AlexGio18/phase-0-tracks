=begin
1. Ask user for a string:
2. Move each letter in string one letter forward.	
=end
index = 1
puts 'Welcome to Secret Agent Message Encryption'
puts 'Input the message you wish to be encrypted:'


message = gets.chomp

	while message.length > index
		
		puts message[index]
		index += 1
	end

def encrypt
	['a','b','c','d','e','f','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
end