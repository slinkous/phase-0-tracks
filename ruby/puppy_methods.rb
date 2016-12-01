class Puppy

	
	def fetch(toy)
		puts "I brought back the #{toy}!"
		toy 
	end

	def speak(barks)
		barks.times do |x|
			p "Woof!"
		end 
	end 

	def roll_over
		puts "*rolls over*"
	end
	
	def initialize
		puts "initializing puppy instance"
	end 

	def dog_years(human_years)
		dog_years = human_years * 7
		dog_years
	end

	def detect_cancer(int)
		if int.even?
			cancer = false 
		else
			cancer = true
		end
		cancer
	end 
end 

# jack = Puppy.new
# jack.fetch("ball")
# jack.roll_over	
# jack.speak(5)
# p jack.dog_years(3)
# p jack.detect_cancer(4)

class Horse

	def initialize
		puts "initializing horse instance"
		@name = "Charlie"
	end 

	def eat(food)
		puts "#{@name} eats #{food}"
	end

	def gallop(steps)
		steps.times do |x|
			p "Clippity Clop"
		end 
	end
end 

stables = []

50.times do |horse|
	stables << Horse.new
	stables
end

# p stables

food = ["apples", "grain", "grass", "carrots"]

stables.each do |horse|
	puts horse
	horse.eat(food.sample)
	horse.gallop(2)
end

