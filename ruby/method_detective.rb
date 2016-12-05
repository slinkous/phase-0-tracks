# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

puts ("iNvEsTiGaTiOn".swapcase == "InVeStIgAtIoN").to_s
# => “InVeStIgAtIoN”

puts ("zom".sub("o", "oo") == "zoom").to_s
# => “zoom”

puts ("enhance".center(15) == "    enhance    ").to_s
# => "    enhance    "

puts ("Stop! You’re under arrest!".upcase == "STOP! YOU’RE UNDER ARREST!").to_s
# => "STOP! YOU’RE UNDER ARREST!"

puts ("the usual".concat(" suspects") == "the usual suspects").to_s
#=> "the usual suspects"

puts (" suspects".prepend("the usual") == "the usual suspects" ).to_s
# => "the usual suspects"

puts ("The case of the disappearing last letter".chop == "The case of the disappearing last lette").to_s
# => "The case of the disappearing last lette"

puts (("The mystery of the missing first letter".delete "T") == "he mystery of the missing first letter").to_s
# => "he mystery of the missing first letter"

puts ("Elementary,    my   dear        Watson!".squeeze(" ") == "Elementary, my dear Watson!").to_s
# => "Elementary, my dear Watson!"

puts ("z".getbyte(0) == 122).to_s
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

puts (("How many times does the letter 'a' appear in this string?".count "a") == 4).to_s
# => 4