=begin
1. Create an empty hash with symbols for each of the values
2. Create a user interface which prompts for each
	--> keyword to skip value and assign nil 
3. Prompt to update any value using key name
	--> keyword to finish
4. Print the values
=end

#Blank Client Hash
client_details = {
	name: nil,
	age: nil,
	children: nil,
	decor_theme: nil,
	good_client: nil,
}

puts "Welcome to the Client Checker!"
puts client_details