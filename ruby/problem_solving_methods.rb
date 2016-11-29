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
		i = -1
	end
	i
end

puts search_array(numbas, 2)
	


