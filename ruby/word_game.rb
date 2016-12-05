=begin
	1. Ask and store a secret word from first player
	2. Display a maximum alotted guesses, and how many have been used so far
		-display as dashes with correct number of characters
	3. Asks player 2 to guess a letter
		- checks to see if character has been guessed
		- if character is contained in the secret word,
				update the word to display that character 




=end

class Game
	attr_reader :word, :max_turns
	attr_accessor :secret_word, :turns_taken, :game_state, :guessed_chars
	def initialize(word)
		@word = word
		@secret_word = ""
		@max_turns = @word.length * 2
		@turns_taken = 0
		@game_state = "continue"
		@guessed_chars = ""
		puts "Ready Player 2"
	end

#converts the word to dashes 
	def hide_word 
		@word.length.times do 
			@secret_word += "-" 
		end
		@secret_word
	end

	def display
		puts "GUESS THE WORD! \n \n \n"
		puts @secret_word.center(30) + "\n \n \n"
		puts "Turns: #{@turns_taken} / #{@max_turns}"
		puts "Characters guessed so far: #{@guessed_chars}"
	end

	def guess (check_char)
		occurances = @word.count(check_char)
		start = 0 
		occurances.times do 
			location = word.index(check_char, start)
			@secret_word = @secret_word[0,location] + @word[location] + @secret_word[location+1, word.length]
			start = location
		end
		@secret_word
	end

	def check_win_condition 
		if @word == @secret_word
			@game_state = "win"
			puts "You guessed correctly! The word is: #{@word}"
		elsif turns_taken >= max_turns
			@game_state = "lose"
			puts "You lose! The word was: #{@word}"
		end
		@game_state	
	end
end

# User Interface!

puts "Player One: Enter a word . . ."
get_word = gets.chomp.downcase
game = Game.new(get_word)
game.secret_word= (game.hide_word)
game.display

while game.game_state == "continue"
	game.display
	puts "Player 2: Guess a letter"
	guess = gets.chomp
	if game.guessed_chars.include?(guess)
		puts "You have already guessed '#{guess}! Please try another letter: "
		guess = gets.chomp
	elsif	game.guess(guess)
		puts "You guessed correctly!"
		game.secret_word 
	else 
		puts "Sorry, no #{guess} here."
	end
	game.turns_taken +=1
	game.guessed_chars += guess
	game.check_win_condition
end


