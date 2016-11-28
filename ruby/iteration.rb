# Spanish Class Grade Book

assignments = ["Vocabulary Quiz", "Grammar Quiz", "Vocabulary Quiz", "Essay", "Unit Test"]

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

#remove failing students

vocab_test.reject! {|student, points| points < 30}

puts vocab_test

quizzes = assignments.select {|assignment| assignment.include?("Quiz")}
puts quizzes

perfect_scores = vocab_test.select {|student, points| points == 50}
puts perfect_scores

assignments.uniq!
puts assignments

#Find students who got A's and B's on the quiz
passing_scores = vocab_test.keep_if {|student, points| points > 40}
puts passing_scores


