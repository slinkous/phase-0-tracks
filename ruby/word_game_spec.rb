require_relative 'word_game'

describe WordGame do

	it "asks player for secret word and hides it" do
		expect(word.empty?).to be_false
	end

	it "makes a hidden version of that word" do
		game = Game.new("apple")
		secret_word = game.hide_word
		expect(secret_word).to_eq "-----"
	end

	it "updates if a character is in the word" do
		game = Game.new("blue")
		game.guess("b")
		expect(game.secret_word).to_eq "b---"
	end 

	it "updates turns per guess" do
		game = Game.new("orange")
		game.guess("o")
		game.guess("a")
		expect(game.turns_taken).to_eq 2
	end

	it "prints winning message if all characters are guessed" do
		game = Game.new("red")
		game.guess("d")
		game.guess("r")
		game.guess("e")
		expect (game.game_state).to_eq "win"
	end
end
