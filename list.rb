class List
	attr_reader :name
	def initialize(name)
		@name = name
		@items = []
	end

	def add_item(title)
		item = Item.new(title)
		@items << item
		
		puts "Item #{item.title} has been added."
	end

	def display_items
		puts "Items:"
		@items.each_with_index |item, index|

			if item.completed?
				status = "[X]"
			else
				status = "[ ]"
			end
		puts item.title #{index + 1}, #{status} - {title.item}.
		end
	end
end

