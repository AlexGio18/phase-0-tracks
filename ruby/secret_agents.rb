=begin
Encryption Method.
1. Ask user to input a string:
2. Find the length of the string.
3. create an counter that starts at 0
4. using a loop have the index count up to the length of the string.
5. using the alphabet, move the index +1 in the alphabet
6. apply to the message 
7. replace the letter with the incremented letter
8. have the counter bump over spaces.	
=end

def encrypt(message)
	counter = 0
	while counter < message.length
	if message[counter] == ' '
		message[counter] = ' '
		counter += 1
	else
		alphabet = 'abcdefghijklmnopqrstuvwxyz'
		instance_in_alphabet = alphabet[alphabet.index(message[counter])]
		message[counter] = alphabet[(alphabet.index(instance_in_alphabet)) + 1] 
		counter += 1 
	end
	end
return message
end

=begin
Decryption Method.
1. Ask user to input a string:
2. Find the length of the string.
3. create an counter that starts at 0
4. using a loop have the index count up to the length of the string.
5. using the alphabet, move the index -1 in the alphabet
6. apply to the message 
7. replace the letter with the decremented letter
8. have the counter bump over spaces.	
=end

def decrypt(message)
	counter = 0
	while counter < message.length
	if message[counter] == ' '
		message[counter] = ' '
		counter += 1
	else
		alphabet = 'abcdefghijklmnopqrstuvwxyz'
		instance_in_alphabet = alphabet[alphabet.index(message[counter])]
		message[counter] = alphabet[(alphabet.index(instance_in_alphabet)) - 1] 
		counter += 1 
	end
	end
return message
end

# puts encrypt('abc')
# puts encrypt('zed')
# puts decrypt('bcd')
# puts decrypt('afe')

#test next after z is a 'aa' -- needs to set parameter for english alphabet

# puts decrypt(encrypt('swordfish'))
# parentheses make the encryption occur first; then the decryption takes place, displaying "swordfish."


puts 'Welcome to Secret Agent Message Encryption (S.A.M.E.)'
puts 'Secret Agent, would you like to encrypt or decrypt a password(\'encrypt\'/\'decrypt\')?'

encrypt_decrypt = gets.chomp.downcase

if encrypt_decrypt == 'encrypt'
	puts 'Input password for encryption:'
	password = gets.chomp
	encrypted_password = encrypt(password)
	puts 'Encryption: ' + encrypted_password
	puts ' '

	elsif encrypt_decrypt =='decrypt'
		puts 'Input password for decryption:'
		password = gets.chomp
		decrypted_password = decrypt(password)

		puts 'Decryption : ' + decrypted_password
		puts ' '
end
puts 'Exit.'

