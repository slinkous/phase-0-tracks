puts "What's your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp

puts "What year were you born?"
birth_year = gets.chomp

puts "Would you like some garlic bread? (Y/N)"
garlic_bread_answer = gets.chomp
garlic_bread = false
if garlic_bread_answer == "Y"
	garlic_bread = true
end

puts "Would you like to enroll in company health insurance? (Y/N)"
insurance_answer = gets.chomp
insurance = false
if insurance_answer == "Y"
	insurance = true
end


wolves_like_sunshine = true
wolves_like_garlic = true
vampires_like_sunshine = false
vampires_like_garlic = false

