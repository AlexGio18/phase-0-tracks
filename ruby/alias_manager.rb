#tricky spyname algorithm
=begin
1. ask user for first name last name input
2. maybe try creating a nested data structure? split first and last name into array
3. break letters of first and last name down into nested arrays
4. .reverse the name array
5. write a method that changes vowel to next vowel
6. write a method that changes consonant to next consonant.
=end

#method that splits up First Name and Last Name into two valus in an array
def name_array(name)
	name.split(' ')
end

#method that splits up the characters of first name and last name into arrays
def chars_array(name)
	name.chars
end

#method that if character is a vowel, move it to next possible vowel
def next_vowel(letter)
	vowels = 'aeiou'
		if letter =='u'
			next_vowel = 'a'
		else
		next_vowel = vowels[vowels.index(letter) + 1]
	end

end
#method that if character is a consonant, move it to next possible consonant
def next_consonant(letter)
	consonants = 'bcdfghjklmnpqrstvwxyz'
		if letter == 'z'
			next_consonant = 'b'
		else 
		next_consonant = consonants[consonants.index(letter) + 1]
	end
end
#method that looks at each character, decides which vowel it is, and swaps to next.
#every letter that is not a vowel is a consonant, so else swaps to enxt consonant.
def alias_chars(name_chars)
name_chars.map! do |chars|
	chars = chars.downcase
	if chars == 'a' || chars == 'e' || chars == 'i' || chars == 'o' || chars == 'u'
		next_vowel(chars)
	else 
		next_consonant(chars)
	end
end
end

puts "Welcome to the Alias Program"
puts

real_name = ' '
real_name_array = []
alias_name_array = []

until real_name == 'quit'
	puts "Psst... hey spy... give me your name(type 'quit' to exit)."
	real_name = gets.chomp

	if real_name != 'quit'
	lastname_firstname = name_array(real_name).reverse
	#p lastname_Firstname

	lastname = lastname_firstname[0]
	firstname = lastname_firstname [1]

	lastname_chars = chars_array(lastname)
	firstname_chars = chars_array(firstname)
	# p lastname_chars
	# p firstname_chars

	alias_lastname =  alias_chars(lastname_chars).join('').capitalize
	alias_firstname = alias_chars(firstname_chars).join('').capitalize

	alias_fullname = alias_firstname + ' ' + alias_lastname
	# p alias_lastname
	# p alias_firstname
	
	puts "#{real_name}, you're new name is #{alias_fullname}."

	real_name_array << real_name
	alias_name_array << alias_fullname
	counter = 0
	# p alias_name_array
	# p real_name_array

	else 
		while counter < real_name_array.length
			puts 
			puts "#{real_name_array[counter]} is now #{alias_name_array[counter]}."
		counter += 1
	end
		puts
		puts "End Alias program."
	end
end
 

