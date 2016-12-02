class TodoList

	def initialize(list)
		@list = list 
	end

	def get_items
		@list
	end

	def add_item(new_item)
		@list << new_item

	end

	def delete_item(item)
		@list.delete(item)
		@list
	end

	def get_item(index)
		@list[index]
	end

end

# list = TodoList.new(["do the dishes", "mow the lawn"])

# p list.get_items
# p list.add_item("mop")
# p list.delete_item("mop")

# p list.get_item(0)
