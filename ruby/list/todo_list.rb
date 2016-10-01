class TodoList

	attr_reader :get_items

	def initialize(array)
		@get_items = array
	end

	def add_item(str)
		@get_items << str
	end
	
	def delete_item(str)
		@get_items.delete(str)
	end

	def get_item(int)
		@get_items[int]
	end

end
