puts "Name that hamster!"
hamster_name = gets.chomp

puts "On a scale of 1 to 10, how loud is the hamster?"
hamster_vol = gets.chomp.to_i

puts "Whis the fur color?"
hamster_fur = gets.chomp



puts "Is this hamster a good candidate for adoption? (Y/N)"
hamster_adoption = gets.chomp
if hamster_adoption.upcase == "Y"
    adoptable = true
elsif hamster_adoption.upcase == "N"
    adoptable = false
else 
    adoptable = nil
end


puts "Estimated age?"
hamster_age = gets.chomp


puts "Thanks! Here is your hamster:"
print "Name: "
puts hamster_name
print "Volume: "  
puts hamster_vol
print "Color: "
puts hamster_fur 
print "Adoptable?: "
puts adoptable
print "Age: "
puts hamster_age
