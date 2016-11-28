real_name = "Felicia Torres"

def switch_name (name)
	names = name.split(' ')
	name = names[1] + " " + names[0]
end

puts switch_name(real_name)




