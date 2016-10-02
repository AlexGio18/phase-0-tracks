#WORD GAME CLASS ----------------------------------------------------------->
class WordGame
	attr_reader :word, :word_array, :max_guesses, :guess_array, :underscore_word, :end_game, :guess_counter
	
	def initialize(word)
		@word = word
		@word_array = @word.downcase.chars
		@max_guesses = word.length
		@guess_counter = 0
		@guess_array = []
		@underscore_word = []; word.length.times{ @underscore_word << " _ "}
		@end_game = false
	end

	def guess_input(guess)
		@guess_counter += 1
		guess_array << guess
		puts "That was guess #{@guess_counter} of #{@max_guesses}" 
	end
	
	def game_is_won
		puts 
		puts "Nice Job! The word was #{@word}!"
		puts "You won in #{guess_counter} out of #{@max_guesses}"
		@end_game = true
	end

	def game_is_lost
		puts
		puts "Fail. The word was #{@word}!"
		puts "Maybe you'll do better next time!"
		@end_game = true
	end

	def check_guess(guess)
		if guess_array.include? guess
			puts "You already tried that. Don't worry, we won't hold it against you."
			return nil
		end
		
		guess_input(guess)

		if guess == @word 
			return game_is_won

		elsif @word_array.include? guess 
		  	remove_underscores_in_array = (0 ... @word.length).find_all do |i| 
		  		@word[i,1] == guess  
		  	end
		    remove_underscores_in_array.each do |i| 
		    	@underscore_word[i] =  guess
		    end
		    return game_is_won if @word == @underscore_word.join

  		elsif @guess_counter == @max_guesses
  			return game_is_lost
  		end
  		puts "#{@underscore_word.join}"
  	end

end

#USER INTERFACE ----------------------------------------------------------->

puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts "Welcome to the 'Can you guess it?' WORD GAAAAAMEEEEEE!"
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts "Here's how this will work:"
puts "Player 1, please input your 'secret' WORD!"
require 'io/console'
new_game = WordGame.new(STDIN.noecho(&:gets).chomp)
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts "Now, player 2's turn. Take a look at the spaces! You will have #{new_game.max_guesses} guesses."
p new_game.underscore_word.join
puts "You can input one letter at a time, or if you're feeling lucky, guess the entire word!"

until new_game.end_game == true
	puts "Input your guess:"
	player2_guess = gets.chomp
	new_game.check_guess(player2_guess)
	break if new_game.end_game == true
end


#DRIVER CODE ----------------------------------------------------------->

# p new_game
# #p new_game.guess_input("w")
# #p new_game
# p new_game.underscore_word
# #p new_game
# p new_game.check_guess("w")
# p new_game.check_guess("o")
# p new_game.underscore_word
# # p new_game.check_guess("word")
# p new_game.check_guess("o")
# p new_game.check_guess("r")
# p new_game.underscore_word
# # p new_game.check_guess("d")
# p new_game.check_guess("s")

#PSEUDOCODE ----------------------------------------------------------->

=begin
##WORD GAME PSEUDOCODE##

•One user can enter a word (or phrase, if you would like your game to support that), and another user attempts to guess the word.

•Guesses are limited, and the number of guesses available is related to the length of   the word.

•Repeated guesses do not count against the user.
•The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
•The user should get a congratulatory message if they win, and a taunting message if they lose.

ATTRIBUTES for CLASS

set end game scenario to false (will be set to true when game is completed)

take a word from player 1

break it down into individual letters and store it(a.k.a an array)

can guess individual letters or parts of the word stored into an array

counter to keep track of guesses or attempts

underscores that match length of the word

BEHAVIORS for CLASS
behavior that adds guesses to an array(+ 1 to counter) these are stored so repeats are not counted against the user

a behavior that compares strings of letters to the original secret word:
	if word is inputted that matches the secret word, return congralutory message
	if string inputted that matches letter from secret word, replace ‘_’ with 		letters in the correct index.
	return congratulatory message if no more ‘_’ exist
	lose the game if you use up max number of guesses.

maybe a print behavior to show how many guesses are left? or one that prints out current underscores array.

=end