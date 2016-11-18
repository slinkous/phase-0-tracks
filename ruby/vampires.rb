puts "How many employees will be processed?"
employee_count = gets.chomp.to_i
i = 0
while i < employee_count
	puts "What's your name?"
	name = gets.chomp

	puts "How old are you?"
	age = gets.chomp

	puts "What year were you born?"
	birth_year = gets.chomp

	puts "Would you like some garlic bread? (Y/N)"
	garlic_bread_answer = gets.chomp
		if garlic_bread_answer.upcase == "Y"
			garlic_bread = true
		elsif garlic_bread_answer.upcase == "N"
		 	 garlic_bread = false
		else
			 garlic_bread = nil
		end

	puts "Would you like to enroll in company health insurance? (Y/N)"
	insurance_answer = gets.chomp
		if insurance_answer.upcase == "Y"
			insurance = true
		elsif insurance_answer.upcase == "N"
			insurance = false
		else insurance_answer = nil
		end

	if (2016 - birth_year.to_i == age.to_i) || (2016 - birth_year.to_i == age.to_i+1)
		age_test = true
	else age_test = false
	end

	print "Age test?: "
	puts age_test
	print "Garlic bread?: "
	puts garlic_bread
	print "Insurance?: "
	puts insurance

	conclusion = "Results inconclusive."

	conclusion = "Probably not a vampire." if age_test && garlic_bread

	conclusion = "Probably a vampire." if !age_test && (!garlic_bread || !insurance)
		
	conclusion = "Almost certainly a vampire." if (!age_test && !garlic_bread && !insurance)

	conclusion = "Definitely a vampire." if ( name == "Drake Cula" || name == "Tu Fang")

	allergen = nil
	while allergen != "done"
	puts "Please list your allergies: (enter 'done' when finished) "
	allergen = gets.chomp
		if allergen == "sunshine"
			conlusion = "Probably a vampire"
			break
		end
	end	
	puts conclusion

	i += 1
end
	
