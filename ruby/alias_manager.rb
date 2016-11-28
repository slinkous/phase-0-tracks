real_name = "Felicia Torres"

def switch_name (name)
	names = name.split(' ')
	name = names[1] + " " + names[0]
end

puts switch_name(real_name)


def shift_vowels(name)
	vowels = "aeiou"
	name_array = name.downcase.split("")
	shifted_name =""
	name_array.each do |letter|
		if letter.count(vowels) == 1
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
	shifted_name.capitalize	
end

puts shift_vowels("AdReiouz")





