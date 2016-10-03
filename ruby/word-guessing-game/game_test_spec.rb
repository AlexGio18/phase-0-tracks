#RSPEC TESTING ----------------------------------------------------------->

require_relative 'game_program'

describe WordGame do
let(:game) {WordGame.new("bilbo")}

	it "checks the stored word" do
		expect(game.word).to eq "bilbo"
	end

	it "check to see if there are correct number of underscores" do
		expect(game.underscore_word).to eq ["_"] * 5
	end

	it "checks to see how many available guesses there are at the start" do
		expect(game.max_guesses).to eq 5
	end

	it "take user letter input and add a hint" do
		expect(game.check_guess("b")).to eq nil
		p game.underscore_word
	end

	it "check to see if repeated letter does not move counter" do
		expect(game.check_guess("b")).to eq nil
	end

	it "check to see if full answer equals final output" do
		expect(game.check_guess("bilbo")).to eq true
	end
end