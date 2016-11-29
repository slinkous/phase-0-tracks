real_name = "Felicia Torres"

def switch_name (name)
	names = name.split(' ')
	name = names[1].capitalize + " " + names[0].capitalize
rescue 
	puts "something is fishy here"
end

def shift_vowels(name)
	vowels = "aeiou"
	name_array = name.downcase.split("")
	shifted_name =""
	name_array.each do |letter|
		if letter == " "
			shifted_name << letter
		elsif letter.count(vowels) == 1
			if letter == "u"
				shifted_name << "a"
			else
				shifted_name << vowels[vowels.index(letter) + 1]
			end
		else
			if letter.next.count(vowels) == 1
				shifted_name << letter.next.next
			elsif letter == "z"
				shifted_name << "b"
			else
				shifted_name << letter.next
			end
		end
	end
	shifted_name
end

def make_alias (name)
	switch_name(shift_vowels(name))
end
puts "#{real_name} becomes: "
puts make_alias(real_name)

aliases = {
	real_name => make_alias(real_name)
}
puts aliases

def alias_list_ui (list_name)
	name = ""
	alias_name = ""
	answer = ""
	puts "Add a spy? (type 'no' to exit)"
	answer = gets.chomp
	until answer == "no" do
		puts "What is your spy's real name?"
		name = gets.chomp
		alias_name = make_alias(name)
		puts "#{name}: #{alias_name}"
		list_name[name] = alias_name
		puts "Would you like to add a spy? (type 'no' to finish)"
		answer = gets.chomp				
	end
	list_name
end

alias_list_ui(aliases)

puts aliases









