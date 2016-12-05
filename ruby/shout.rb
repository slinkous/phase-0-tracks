module Shout
	def yell_angrily(words)
		words + "!!!! :("
	end
	def yell_happily(words)
		words + "!!!! :)"
	end
end

class Student
	include Shout
end

class Teacher
	include Shout
end

a_teacher = Teacher.new

puts a_teacher.yell_angrily("Quiet please")

a_student = Student.new

puts a_student.yell_happily("We get to learn today")






#module Shout
#	def self.yell_angrily(words)
#		words + "!!!! :("
#	end
#	def self.yell_happily(words)
#		words + "!!!! :)"
#	end	
#end

#puts Shout.yell_happily("This is great")
#puts Shout.yell_angrily("This is not")
