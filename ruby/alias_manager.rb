#tricky spyname algorithm
=begin
1. ask user for first name last name input
2. maybe try creating a nested data structure? split first and last name into array
3. break letters of first and last name down into nested arrays
4. .reverse the name array
5. write a method that changes vowel to next vowel
6. write a method that changes consonant to next consonant.
=end

def name_array(name)
	name.split(' ')
end

def chars_array(name)
	name.chars
end

def next_vowel(letter)
	vowels = 'aeiou'
		if letter =='u'
			next_consonant = 'a'
		else
		next_vowel = vowels(vowels.index(letter) + 1)
	end

end

def next_consonant(letter)
	consonants = 'bcdfghjklmnpqrstvwxyz'
		if letter == 'z'
			next_consonant = 'b'
		else 
		next_consonant = consonants(consonants.index(letter) + 1)
	end
end

puts "Psst... hey spy... give me your name."
real_name = gets.chomp
p name_array(real_name) = 

chars_array1 = rev_name_array[0].chars 
chars_array2 = rev_name_array[1].chars 

