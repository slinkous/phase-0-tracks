=begin 
 Encrypt:
 	Loop until the end of the string (string length)
 	At each character, replace with character one forward
	
	Decrypt
		Create a string that looks like the alphabet
		For each character of the string we're decrypting, 
			find that character's index in "alphabet"
			replace with character from index-1

=end

def encrypt (password)
	i = 0
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	while i < password.length
		a = password[i]
		alphapos = alphabet.index(a)
		b = alphabet[alphapos+1]
		if b == nil
			b = "a"
		end
		password = password[0...i] + b + password[i+1..password.length]
		i+=1
	end
	return password
end

def decrypt (password)
	i = 0
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	while i < password.length
		a = password[i]
		alphapos = alphabet.index(a)
		b = alphabet[alphapos-1]
		if b == nil
			b = "z"
		end
		password = password[0...i] + b + password[i+1..password.length]
		i+=1
	end
	return password
end

def test ()
	print "Test 1: "
	if encrypt("abc") == "bcd"
		puts "passed"
	else puts "failed"
	end
	print "Test 2: "
	if encrypt("zed") == "afe"
		puts "passed"
	else puts "failed"
	end
	print "Test 3: "
	if decrypt("bcd") == "abc"
		puts "passed"
	else puts "failed"
	end
	print "Test 4: "
	if decrypt("afe") == "zed"
		puts "passed"
	else puts "failed"
	end
end

puts decrypt(encrypt("swordfish"))
puts encrypt(decrypt("swordfish"))


puts test()