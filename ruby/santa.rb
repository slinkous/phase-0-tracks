class Santa 
	attr_reader :ethnicity
	attr_accessor :age, :gender
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

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

25.times do |santa|
	kris_kringle = Santa.new(example_genders.sample, example_ethnicities.sample)
	kris_kringle.age= (rand(140))
	puts "This santa is #{kris_kringle.gender}, #{kris_kringle.ethnicity}, and #{kris_kringle.age} years old."
end



