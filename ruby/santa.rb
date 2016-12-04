class Santa 
	def initialize (name, gender = "none", ethnicity = "prefer not to say")
		@name = name
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0 
		puts "Initializing Santa instance . . ."
	end
	def attribute_test
		puts @name 
		puts @gender
		puts @ethnicity
		puts @reindeer_ranking
		puts @age
	end
	def speak
		puts "Ho ho ho! Haaaappy holidays!"
	end
	def eat_milk_and_cookies(flavor)
		puts "That was a good #{flavor} cookie!"
	end
end

kris_kringle = Santa.new("Saint Nick", "other", "nonbinary")
kris_kringle.attribute_test


#kris_kringle.speak

#kris_kringle.eat_milk_and_cookies("chocolate chip")


