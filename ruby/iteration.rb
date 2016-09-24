
def status
	puts "This is our before status message."
	yield
end

status { puts "This is our after status message."}

=begin
letters = ["a","b","c","d","e"]
new_letters = []

puts "Original data"
p letters
p new_letters


# iterate through the array with .each
letters.each do |letter|
	new_letters << letter.next
end

puts "After .each call:"
p letters
p new_letters


############

numbers = {1=> 'one', 2 => 'two', 3 => 'three' }

# iterate through the hash with .each

numbers.each do |digit, word|
	puts "#{digit} is spelled out as #{word}"
end
=end
=begin
letters = ['a', 'b', 'c', 'd', 'e']

puts "Original data:"
p letters

# iterate through the array with .map
letters.map! do |letter|
	puts letter
	letter.next
end

puts "After .map call:"
p letters
p modified_letters

=end

ny_sport_teams = ['knicks', 'nets', 'rangers', 'mets', 'yankees', 'giants', 'jets']

types_sport = { 
	baseball: 'David Wright',
	football: 'Curtis Martin',
	basketball: 'Carmelo Anthony',
	hockey: 'Wayne Gretzky'
}
puts 'before iteration:'
p ny_sport_teams
p types_sport

ny_sport_teams.each do |teams|
	puts "Ny sports teams: #{teams}"
end

types_sport.each do |sport, players|
	puts "Here is the #{sport} and the player who plays it #{players}"
end 

puts "after .each"
p ny_sport_teams
p types_sport


def ny_teams(ny_sport_teams)
	ny_sport_teams.map! do |teams|
	"ny #{teams}"	
	end
end
puts "after .map!"
p ny_teams(ny_sport_teams)
p ny_sport_teams

#.delete_if deletes items that meet certain conditions
nums = [4, 2, 3 , 8 , 7 , 9 , 5]
nums.delete_if{|number|number < 5}

hash = {"aa"=> 50, "a" => 100, "b" => 200, "c" => 300 }
hash.delete_if {|letter, number| number <= 150}

#.keep_if filters items to only keep items that satisfy a certain conditions
nums = [4, 2, 3 , 8 , 7 , 9 , 5]
nums.keep_if{|number|number > 5}

hash = {"aa"=> 50, "a" => 100, "b" => 200, "c" => 300 }
hash.keep_if {|letter, number| number <= 150}

#select also filters items that meet certain conditions
nums = [4, 2, 3 , 8 , 7 , 9 , 5]
nums.select {|number|number < 5}

hash = {"z"=> 50, "a" => 100, "b" => 200, "c" => 300 }
hash.select {|letter, number| letter >= "c"}

#take_while removes items that meet certain conditions
nums = [1, 3, 3, 4, 5, 0]
nums.take_while { |numbers| numbers < 4 }

#reject
hash = {"z"=> 50, "a" => 100, "b" => 200, "c" => 300 }
hash.reject {|letter, number| letter >= "c"}
