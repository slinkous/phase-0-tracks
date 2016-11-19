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
	while i < password.length
		a = password[i]
		b = a.next
		password = password[0...i] + b + password[i+1..password.length]
		i+=1
	end
	return password
end

a = encrypt("abc")

puts a

def decrypt (password)
	i = 0
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	while i < password.length
		a = password[i]
		alphapoint = index[a]
		b = alphabet[alphapoint-1]
		password = password[0...i] + b + password[i+1..password.length]
		i+=1
	end
	return password
end

puts decrypt (a)