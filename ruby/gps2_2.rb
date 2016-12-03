=begin 
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create hash to store foods
  # set default quantity (1)
  # print the list to the console [can you use one of your other methods here?]
# output: hash of grocery items

# Method to add an item to a list
# input: takes grocery list hash, item name, and optional quantity
# steps: -check if item exists in the list
- update quantity if item already exists
- if not, add item with quantity to list
# output: updated list in hash 

# Method to remove an item from the list
# input: grocery hash, item to remove as string
# steps: - check if the list contains the item,
-delete item
-otherwise, print error 
# output: updated grocery hash

# Method to update the quantity of an item
# input: grocery hash, item name as string, new quantity
# steps: -check that item is in grocery hash
-change quantity to new quantity
# output: updated grocery hash

# Method to print a list and make it look pretty
# input: grocery hash
# steps:
- print header
- print "Buy X quantity of item" for each item 
# output: string of user-relevant info
=end 

def create_list (items)
	list = {}

	items.split(" ").each do |item|
		list[item] = 1
	end
	list
end

def add_item (list, item, quantity=1)
	if list.include?(item)
		list[item] += quantity
	else
		list[item] = quantity
	end
	list
end 

def remove_item(list, item)
	if list.include?(item)
		list.delete(item)
	else
		puts "That item isn't on the list!"
	end
	list
end

def update_list(list, item, quantity=1)
	list[item] = quantity
	list
end

def print_list(list)
	puts "Here is your grocery list:"
	list.each do |item, quantity|
		puts "You need #{quantity} #{item}"
	end
end

#debugging
list = create_list("apples bananas oranges")

p add_item(list, "lemonade", 2)
p add_item(list, "tomatoes", 3)
p add_item(list, "onion", 1)
p add_item(list, "icecream", 4) 

p remove_item(list, "lemonade")

p update_list(list, "icecream", 1)

print_list(list)