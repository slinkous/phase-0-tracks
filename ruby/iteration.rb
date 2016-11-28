# Spanish Class Grade Book

assignments = ["Vocabulary Quiz", "Grammar Quiz", "Essay", "Unit Test"]

vocab_test = {
	"Manuel" => 45,
	"Paco" => 50,
	"Visitacion" => 35,
	"Maria" => 39,
	"Mario" => 25,
	"Juanita" => 47,
	"Angel" => 44,
	"Juan Carlos" => 25,
	"Chacho" => 50,
 }

 puts "We will do the following assignments this unit:"
assignments.each do |assignment|
	puts "There will be: #{assignment}"
end

puts "Here are the scores from the Vocabulary Quiz:"
vocab_test.each do |student, points|
	puts "#{student} scored #{points} out of 50."
end

#Make assignment names generic
assignments.map! do |assignment|
	assignment + ": (50 pts)"
end
puts assignments

vocab_grades = vocab_test.map do |student,points|
	(100*points/50).to_s + "%" 
end

puts vocab_test
puts vocab_grades 

#There will be no essay in Unit 1

assignments.reject! {|assignment| assignment == "Essay: (50 pts)"}

puts assignments

vocab_test.reject! {|student, points| points < 30}

puts vocab_test

