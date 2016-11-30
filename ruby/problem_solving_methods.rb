numbas = [12, 79, 97, 31, 62, 15]

def search_array(arr, check_key)
	i = 0 
	while i < arr.length
		if arr[i] == check_key then
			break
		else
			i += 1
		end
	end
	if i == arr.length
		i = nil
	end
	i
end

puts search_array(numbas, 2)

# Create fibonacci sequence
=begin
Takes an array of 0 and 1, adds last two digits
=end 
def fib(size)
	i = 0
	sequence = [0,1]
	if size == 0
		sequence = []
	elsif size == 1
		sequence = [0]
	else
		while i < size - 2
			sequence << (sequence[-2] + sequence[-1])
			i += 1
		end
	end
	sequence
end

=begin
puts fib(2)
puts fib(0)
puts fib(1)
puts fib(10)
puts fib(20)
puts fib(100)

puts fib(100)[-1] == 218922995834555169026
=end
	
# https://www.sitepoint.com/sorting-algorithms-ruby/

#Made Up Sorting Method
=begin
Compare the first two values
if the left is greater, move this value to the end of the array
if the right is greater, move to next spot on array to continue comparing
stop when you reach the last value of the array
=end

def mothrah_sort (an_array)
	def move_to_end (value, array)
		array.delete(value)
		array.push(value)
	end
	pos = 0
	while pos < an_array.length 
		if an_array[pos] > an_array[pos + 1]
			move_to_end(an_array[pos], an_array)
		else
			pos += 1
		end
	end
	an_array
end

puts mothrah_sort(numbas)




