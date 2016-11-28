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
# Prompt for client info

puts "Name? : "
	client_details[:name] = gets.chomp
puts "Age? : "
	client_details[:age] = gets.chomp.to_i
puts "How many children? : "
	client_details[:children] = gets.chomp.to_i
puts "Interior decor theme? : "
	client_details[:decor_theme] = gets.chomp
puts "Are they a good client? (Y/N) : "
	answer = gets.chomp
	if answer.upcase == "Y"
		client_details[:good_client] = true
	elsif answer.upcase == "N"
		client_details[:good_client] = false
	else
		client_details[:good_client] = nil
	end

puts client_details

#Loopless key update
puts "Would you like to update a key? Enter the key name or 'none'."
key = gets.chomp
if key == "none"
	puts "Guess you got it right the first time!"
#covert input to boolean again
elsif key == "good_client"
	puts "What would you like to update the value of #{key} to?: "
	answer = gets.chomp
	if answer.upcase == "TRUE"
		client_details[:good_client] = true
	elsif answer.upcase == "FALSE"
		client_details[:good_client] = false
	else
		client_details[:good_client] = nil
	end
else
	puts "What would you like to update the value of #{key} to?: "
	answer = gets.chomp
	client_details[key.to_sym] = answer
end

puts client_details
