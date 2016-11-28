# Spanish Class Grade Book

assignments = ["Vocabulary Quiz", "Grammar Quiz", "Essay", "Unit Test"]

vocab_test = {
	"Manuel" => 45,
	"Paco" => 50,
	"Visitacion" => 35
 }

 puts "We will do the following assignments this unit:"
assignments.each do |assignment|
	puts "There will be: #{assignment}"
end

puts "Here are the scores from the Vocabulary Quiz:"
vocab_test.each do |student, points|
	puts "#{student} scored #{points} out of 50."
end



