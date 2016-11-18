puts "Name that hamster!"
hamster_name = gets.chomp

puts "On a scale of 1 to 10, how loud is the hamster?"
hamster_vol = gets.chomp.to_i

puts "Whis the fur color?"
hamster_fur = gets.chomp



puts "Is this hamster a good candidate for adoption? Enter yes or no."
valid_input = false
hamster_adoption = gets.chomp
until valid_input == true
  if hamster_adoption == "yes"
    hamster_adoption = true
    valid_input = true
    puts "thanks"
  elsif hamster_adoption == "no"
    hamster_adoption = false
    valid_input = true
    puts "thanks"
  else hamster_adoption
    puts "Please enter only yes or no."
    hamster_adoption = gets.chomp
  end
end

puts "Estimated age?"
hamster_age = gets.chomp
if hamster_age = ""
  hamster_age = nil
else
  hamster_age = hamster_age.to_i
end

puts "Thanks! Here are the results"
puts hamster_name  
puts hamster_vol
puts hamster_fur 
puts hamster_adoption 
puts hamster_age
