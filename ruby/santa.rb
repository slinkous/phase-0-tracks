class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender
	def initialize (gender = "none", ethnicity = "prefer not to say")
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0 
		puts "Initializing Santa instance . . ."
	end
	
	def celebrate_birthday
		@age += 1
	end
	def get_mad_at (reindeer)
		puts reindeer.upcase + "!!!!!"
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking << reindeer
	end
	def speak
		puts "Ho ho ho! Haaaappy holidays!"
	end
	def eat_milk_and_cookies(flavor)
		puts "That was a good #{flavor} cookie!"
	end
end

kris_kringle = Santa.new("other", "nonbinary")
kris_kringle.celebrate_birthday
kris_kringle.get_mad_at("Dasher")
kris_kringle.gender=("genderfluid")
puts kris_kringle.age
puts kris_kringle.ethnicity


#kris_kringle.speak

#kris_kringle.eat_milk_and_cookies("chocolate chip")


